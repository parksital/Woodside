//
//  AWSClient.swift
//  Woodside
//
//  Created by Parvin Sital on 31/10/2019.
//  Copyright © 2019 Parvin Sital. All rights reserved.
//

import Foundation
import AWSAppSync

enum NetworkError: Error {
    case noData
}

protocol APIClient {
    func fetch<Q: GraphQLQuery>(query: Q, completion: @escaping (Result<Q.Data>) -> Void)
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
    
    func fetch<Q: GraphQLQuery>(query: Q, completion: @escaping (Result<Q.Data>) -> Void) {
        appSyncClient.fetch(
            query: query,
            cachePolicy: .returnCacheDataAndFetch,
            queue: .global(qos: .userInitiated)) { result, error in
                guard error == nil else {
                    completion(.failure(error!))
                    return
                }

                guard let data = result?.data else {
                    completion(.failure(NetworkError.noData))
                    return
                }

                completion(.success(data))
        }
    }
}
