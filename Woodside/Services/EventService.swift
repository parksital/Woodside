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
    func subscribe() {

    }
    
    func getAllEvents() {
        client.fetch(query: ListEventsQuery()) { result in
            
        }
    }
    
    func getEventByID(id: GraphQLID) {
        client.fetch(query: GetEventQuery(id: id)) { result in
            
        }
    }
}

final class EventService: Events {
    private (set) var client: APIClient!
    private (set) var cancellable: Cancellable?

    init(client: APIClient) {
        self.client = client
    }
}
 
