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

struct Event: Identifiable {
    var id: GraphQLID
    var name: String
    var venueName: String
    var description: String?
}

class EventStore: ObservableObject {
    private let client: APIClient!
    private var token: String?
    private var cancellable: AnyCancellable?

    @Published private (set) var events: [Event] = []

    init(client: APIClient) {
        self.client = client
    }
    
    deinit {
        cancellable?.cancel()
        cancellable = nil
    }
}

extension EventStore {
    func getAllEvents() {
        let listEvents = ListEventsQuery(limit: 20, nextToken: token)
        cancellable = client.fetch(query: listEvents)
            .map(unwrap(_:))
            .map(mapToEvent(_:))
            .replaceError(with: [])
            .receive(on: DispatchQueue.main)
            .assign(to: \.events, on: self)
            
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

    private func unwrap(_ data: ListEventsQuery.Data) -> [ListEventsQuery.Data.ListEvent.Item] {
        updateToken(data.listEvents?.nextToken)
        return data.listEvents?.items?
                .compactMap { $0 } ?? []
    }

    private func updateToken(_ token: String?) {
        self.token = token
    }
}
