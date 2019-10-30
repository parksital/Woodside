//
//  ServiceProtocol.swift
//  Woodside
//
//  Created by Parvin Sital on 29/10/2019.
//  Copyright © 2019 Parvin Sital. All rights reserved.
//

import Foundation
import AWSAppSync

protocol APIClient {
    func fetch<Q: GraphQLQuery>(query: Q, resultHandler: @escaping OperationResultHandler<Q>)
}

class AWSClient: APIClient {
    private var appSyncClient: AWSAppSyncClient!
    
    init(appSyncClient: AWSAppSyncClient) {
        self.appSyncClient = appSyncClient
    }
    
    func fetch<Q: GraphQLQuery>(query: Q, resultHandler: @escaping OperationResultHandler<Q>) {

        appSyncClient.fetch(
            query: query,
            cachePolicy: .returnCacheDataAndFetch,
            queue: .main,
            resultHandler: resultHandler)
    }
}

protocol ServiceProtocol: class {
    var client: APIClient! { get }
    var cancellable: Cancellable? { get }
    init(client: APIClient)
}
