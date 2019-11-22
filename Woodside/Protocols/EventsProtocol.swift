//
//  EventsProtocol.swift
//  Woodside
//
//  Created by Parvin Sital on 21/11/2019.
//  Copyright © 2019 Parvin Sital. All rights reserved.
//

import Foundation
import AWSAppSync
import Combine

protocol EventsProtocol: ServiceProtocol {
    func getAllEvents() -> AnyPublisher<[Event], Never>
    func getEvent(byID eventID: GraphQLID) -> AnyPublisher<Event?, Never>
}

extension EventsProtocol {
    func getAllEvents() -> AnyPublisher<[Event], Never> {
        client.fetch(query: ListEventsQuery(limit: 20, nextToken: token))
            .compactMap { $0.listEvents }
            .handleEvents(receiveOutput: updateToken(_:))
            .map(unwrap(_:))
            .map(mapListEventToEvent(_:))
            .replaceError(with: [])
            .eraseToAnyPublisher()
    }

    func getEvent(byID eventID: GraphQLID) -> AnyPublisher<Event?, Never> {
        return client.fetch(query: GetEventQuery(id: eventID))
            .compactMap { $0.getEvent }
            .map(mapGetEventItemToEvent(_:))
            .catch { _ in Just<Event?>(nil) }
            .eraseToAnyPublisher()
    }
}

private extension EventsProtocol {
    func unwrap(_ data: ListEventsQuery.Data.ListEvent) -> [ListEventsQuery.Data.ListEvent.Item] {
        data.items?.compactMap { $0 } ?? []
    }

    func mapGetEventItemToEvent(_ item: GetEventQuery.Data.GetEvent) -> Event {
        Event(event: item)
    }

    func mapListEventToEvent(_ items: [ListEventsQuery.Data.ListEvent.Item]) -> [Event] {
        items.map { Event(event: $0) }
    }
    
    func updateToken(_ item: ListEventsQuery.Data.ListEvent) {
        self.token = item.nextToken
    }
}
