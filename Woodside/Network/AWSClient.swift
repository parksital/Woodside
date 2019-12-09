//
//  AWSClient.swift
//  Woodside
//
//  Created by Parvin Sital on 31/10/2019.
//  Copyright © 2019 Parvin Sital. All rights reserved.
//

import Foundation
import AWSAppSync
import Combine

protocol APIClient {
    var subscriptionWatcher: AWSAppSync.Cancellable? { get }
    func fetch<Q: GraphQLQuery>(query: Q) -> Future<Q.Data, NetworkError>
    func subscribe<S: GraphQLSubscription>(target: S) -> Future<S.Data, Error>
}

class AWSClient: APIClient {
    private (set) var subscriptionWatcher: AWSAppSync.Cancellable?
    private var appSyncClient: AWSAppSyncClient!
    
    init() {
        
        do {
            let appSyncConfig = try AWSAppSyncClientConfiguration(
                appSyncServiceConfig: AWSAppSyncServiceConfig(),
                cacheConfiguration: AWSAppSyncCacheConfiguration()
            )
            
            self.appSyncClient = try AWSAppSyncClient(appSyncConfig: appSyncConfig)
        } catch {
            print("Error initializing appSyncClient. Error: \(error.localizedDescription)")
        }
    }

    func fetch<Q: GraphQLQuery>(query: Q) -> Future<Q.Data, NetworkError> {
        return Future<Q.Data, NetworkError> { [unowned self] promise in
            self.appSyncClient.fetch(
                query: query,
                cachePolicy: .returnCacheDataAndFetch,
                queue: .global(qos: .userInitiated)
            ) { (result, error) in
                guard error == nil else {
                    promise(.failure(.noData))
                    return
                }

                guard let data = result?.data else {
                    promise(.failure(.noData))
                    return
                }

                promise(.success(data))
            }
        }
    }
    
    func subscribe<S: GraphQLSubscription>(target: S) -> Future<S.Data, Error> {
        return Future<S.Data, Error> { [weak self] promise in
            do {
                self?.subscriptionWatcher = try self?.appSyncClient.subscribe(
                    subscription: target,
                    queue: .global(qos: .userInitiated),
                    statusChangeHandler: nil) { (result, transaction, error) in
                        guard error == nil else {
                            assertionFailure("\(error!): " + error!.localizedDescription)
                            promise(.failure(error!))
                            return
                        }
                        guard let data = result?.data else {
                            assertionFailure("noData")
                            promise(.failure(NetworkError.noData))
                            return
                        }
                        promise(.success(data))
                }
            } catch {
                print(error.localizedDescription)
            }
        }
    }
}
