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
    func getAllVenues()
    func getVenueByID(id: GraphQLID)
}

extension Venues {
    func subscribe() {
        do {
            cancellable = try appSyncClient.subscribe(subscription: OnCreateEventSubscription(), resultHandler: { (result, transaction, error) in
                if let result = result {
                    print("CreateTodo subscription data:" + result.data!.onCreateEvent!.name + " " + result.data!.onCreateEvent!.description!)
                }
            })
        } catch {
            print("AWS Subscription init: \(error.localizedDescription)")
        }
    }
    
    
    func getAllVenues() {
        appSyncClient.fetch(query: ListVenuesQuery(), cachePolicy: .returnCacheDataAndFetch) { result, error in
            if error != nil {
                print(error?.localizedDescription ?? "")
                return
            }
            print("Query complete.")
            result?.data?.listVenues?.items?
                .compactMap { $0 }
                .forEach { print($0.name) }
        }
    }

    func getVenueByID(id: GraphQLID) {
        appSyncClient.fetch(query: GetVenueQuery(id: id), cachePolicy: .returnCacheDataAndFetch) { (result, error) in
            // success: handle the retrieved venue
        }
    }
    
    func runMutation() {
        // wip
    }
}

final class VenueService: Venues {
    private (set) var appSyncClient: AWSAppSyncClient!
    var cancellable: Cancellable?
    
    init(client: AWSAppSyncClient) {
        appSyncClient = client
    }
}
