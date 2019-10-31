//
//  VenueService.swift
//  Woodside
//
//  Created by Parvin Sital on 30/10/2019.
//  Copyright © 2019 Parvin Sital. All rights reserved.
//

import Foundation
import AWSAppSync

protocol Venues: ServiceProtocol {
    // subject to update to include completion handler
    func getAllVenues()
    func getVenueByID(id: GraphQLID)
}

extension Venues {
    func subscribe() {
//        do {
//            cancellable = try appSyncClient.subscribe(subscription: OnCreateEventSubscription(), resultHandler: { (result, transaction, error) in
//                if let result = result {
//                    print("CreateTodo subscription data:" + result.data!.onCreateEvent!.name + " " + result.data!.onCreateEvent!.description!)
//                }
//            })
//        } catch {
//            print("AWS Subscription init: \(error.localizedDescription)")
//        }
    }
    
    
    func getAllVenues() {
        client.fetch(query: ListVenuesQuery()) { result, error in
            guard error == nil else {
                // throw an error?
                assertionFailure("encountered an error: \(error!.localizedDescription)")
                return
            }
            
            result?.data?.listVenues?.items?
                .compactMap { $0 }
                .forEach { print($0.name) }
        }
    }
    

    func getVenueByID(id: GraphQLID) {
        client.fetch(query: GetVenueQuery(id: id)) { result, error in
            // handle cases
        }
    }
}

final class VenueService: Venues {
    private (set) var client: APIClient!
    private (set) var cancellable: Cancellable?
    
    init(client: APIClient) {
        self.client = client
    }
}
