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
    @Published private (set) var events: [EventListItemViewModel] = []
    @Published private (set) var event: Event?
    private let formatter: DateFormatter = {
        let formatter = DateFormatter()
        formatter.dateStyle = .short
        formatter.timeStyle = .short
        return formatter
    }()
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

    func getEvent(byID eventID: String) {
        eventService.getEventByID(eventID)
            .map { $0?.getEvent(dateFormatting: self.formatter.string(from:)) }
            .receive(on: DispatchQueue.main)
            .assign(to: \EventStore.event, on: self)
            .store(in: &cancellables)
    }
}
