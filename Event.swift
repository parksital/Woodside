//
//  Event.swift
//  Woodside
//
//  Created by Parvin Sital on 18/11/2019.
//  Copyright © 2019 Parvin Sital. All rights reserved.
//

import Foundation

struct Event: Identifiable {
    var id: String
    var name: String
    var venueName: String
    var description: String?
}

extension Event {
    init(event: GetEventQuery.Data.GetEvent) {
        self.id = event.id
        self.name = event.name
        self.venueName = event.venue.name
        self.description = event.description
    }
    
    init(event: ListEventsQuery.Data.ListEvent.Item) {
        self.id = event.id
        self.name = event.name
        self.venueName = event.venue.name
        self.description = event.description
    }
}
