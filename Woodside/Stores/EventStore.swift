//
//  EventStore.swift
//  Woodside
//
//  Created by Parvin Sital on 17/11/2019.
//  Copyright © 2019 Parvin Sital. All rights reserved.
//

import Foundation
import AWSAppSync
import Combine

class EventStore: ObservableObject {
    private let eventService: Events!
    @Published private (set) var events: [Event] = []
    private var cancellable: AnyCancellable?
    
    init(eventService: Events!) {
        self.eventService = eventService
    }
    
    deinit {
        cancellable?.cancel()
        cancellable = nil
    }
}

extension EventStore {
    func getAllEvents() {
        cancellable = eventService.getAllEvents()
            .receive(on: DispatchQueue.main)
            .assign(to: \EventStore.events, on: self)
    }
    
    private func mapToEvent(_ items: [ListEventsQuery.Data.ListEvent.Item]) -> [Event] {
        return items.map {
            Event(
                id: $0.id,
                name: $0.name,
                venueName: $0.venue.name,
                description: $0.description
            )
        }
    }
}
