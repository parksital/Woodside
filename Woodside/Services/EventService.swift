//
//  EventService.swift
//  Woodside
//
//  Created by Parvin Sital on 23/10/2019.
//  Copyright © 2019 Parvin Sital. All rights reserved.
//

import Foundation
import AWSAppSync

protocol Events: ServiceProtocol {
    func getAllEvents()
    func getEventByID(id: GraphQLID)
}

extension Events {
    func getAllEvents() {
        appSyncClient.fetch(query: ListEventsQuery(), cachePolicy: .returnCacheDataAndFetch) { result, error in
            // success: handle the retrieved events
        }
    }
    
    func getEventByID(id: GraphQLID) {
        appSyncClient.fetch(query: GetEventQuery(id: id), cachePolicy: .returnCacheDataAndFetch) { (result, error) in
            // success: handle the retrieved event
        }
    }
    
    func runMutation(){
        // wip
    }
}

final class EventService: Events {
    var appSyncClient: AWSAppSyncClient!
}
 
