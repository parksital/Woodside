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
    private let eventService: EventService!
    @Published private (set) var event: EventDetailViewModel?
    @Published private (set) var events: [EventSummaryViewModel] = []
    private var cancellables: Set<AnyCancellable> = .init()
    init(eventService: EventService!) {
        self.eventService = eventService
        getEventList()
    }
    
    deinit {
        cancellables.forEach { $0.cancel() }
        cancellables.removeAll()
    }
}

extension EventStore {
    func getEventList() {
        eventService.getSortedEvents()
            .receive(on: DispatchQueue.main)
            .assign(to: \EventStore.events, on: self)
            .store(in: &cancellables)
    }
    
    func getEventByID(id: String) {
        eventService.getEventByID(id: id)
            .receive(on: DispatchQueue.main)
            .assign(to: \EventStore.event, on: self)
            .store(in: &cancellables)
    }
}
