//
//  AWSClient.swift
//  Woodside
//
//  Created by Parvin Sital on 31/10/2019.
//  Copyright © 2019 Parvin Sital. All rights reserved.
//

import Foundation
import AWSAppSync

protocol APIClient {
    func fetch<Q: GraphQLQuery>(query: Q, resultHandler: @escaping OperationResultHandler<Q>)
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

    func fetch<Q: GraphQLQuery>(query: Q, resultHandler: @escaping OperationResultHandler<Q>) {

        appSyncClient.fetch(
            query: query,
            cachePolicy: .returnCacheDataAndFetch,
            queue: .main,
            resultHandler: resultHandler)
    }
}
