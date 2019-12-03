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
    @Published private (set) var events: [Event] = []
    @Published private (set) var event: Event?
    private let displayFormatter: DateFormatter = {
        let formatter = DateFormatter()
        formatter.dateStyle = .short
        formatter.timeStyle = .short
        return formatter
    }()
    private var cancellable: AnyCancellable?
    init(eventService: EventService!) {
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
            .map { $0.compactMap {
                self.mapEventResponse($0, dateFormatting: self.displayFormatter.string(from:))
                }
        }
        .receive(on: DispatchQueue.main)
        .assign(to: \EventStore.events, on: self)
    }
    
    func getEvent(byID eventID: String) {
        cancellable = eventService.getEventByID(eventID)
            .map {
                self.mapEventResponse($0, dateFormatting: self.displayFormatter.string(from:))
        }
        .receive(on: DispatchQueue.main)
        .assign(to: \EventStore.event, on: self)
    }
}
private extension EventStore {
    func mapEventResponse(_ eventResponse: EventResponse?, dateFormatting: (Date) -> String) -> Event? {
        guard let response = eventResponse else { return nil }
        return Event(
            id: response.id,
            name: response.name,
            venueName: response.venueName,
            date: dateFormatting(response.date),
            description: response.description
        )
    }
}
