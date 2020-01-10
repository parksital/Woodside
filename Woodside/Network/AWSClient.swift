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
    func fetch<Q: GraphQLQuery>(query: Q) -> Future<Q.Data, Error>
}

class AWSClient: APIClient {
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

    func fetch<Q: GraphQLQuery>(query: Q) -> Future<Q.Data, Error> {
        return Future<Q.Data, Error> { [weak self] promise in
            self?.appSyncClient.fetch(
                query: query,
                cachePolicy: .returnCacheDataAndFetch,
                queue: .global(qos: .userInitiated)
            ) { (result, error) in
                guard error == nil else {
                    promise(.failure(error!))
                    return
                }

                guard let data = result?.data else {
                    promise(.failure(NetworkError.noData))
                    return
                }

                promise(.success(data))
            }
        }
    }
}
