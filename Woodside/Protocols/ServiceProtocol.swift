//
//  ServiceProtocol.swift
//  Woodside
//
//  Created by Parvin Sital on 29/10/2019.
//  Copyright © 2019 Parvin Sital. All rights reserved.
//

import Foundation
import AWSAppSync
import Combine

protocol ServiceProtocol: class {
    associatedtype List: GraphQLQuery
    associatedtype ByID: GraphQLQuery

    var client: APIClient! { get }
    var token: String? { get set }
    init(client: APIClient)
}

extension ServiceProtocol {
    /// New refactored function
    /// - Parameter query: The query as specified by the conforming types.
    func getAllElements(query: List) -> Future<List.Data, NetworkError> {
        client.fetch(query: query)
    }

    /// New refactored function
    /// - Parameter query: The query as specified by the conforming types.
    func getByID(query: ByID) -> Future<ByID.Data, NetworkError> {
        client.fetch(query: query)
    }

    func updateToken(_ item: ListEventsQuery.Data.ListEvent) {
        self.token = item.nextToken
    }
}
