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
    @Published private (set) var event: Event?

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
    
    func getEvent(byID eventID: String) {
        cancellable = eventService.getEvent(byID: eventID)
            .receive(on: DispatchQueue.main)
            .assign(to: \EventStore.event, on: self)
    }
}
