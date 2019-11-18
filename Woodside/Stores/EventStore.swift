//
//  EventStore.swift
//  Woodside
//
//  Created by Parvin Sital on 17/11/2019.
//  Copyright © 2019 Parvin Sital. All rights reserved.
//

import Foundation
import AWSAppSync

struct Event: Identifiable {
    var id: GraphQLID
    var name: String
    var venueName: String
    var description: String?
}

class EventStore: ObservableObject {
    private let client: APIClient!
    private var token: String?
    @Published private (set) var events: [Event] = []

    init(client: APIClient) {
        self.client = client
    }
}

extension EventStore {
    func getEventList(limit: Int) {
        let listEvents = ListEventsQuery(limit: limit, nextToken: token)
        
        client.fetch(query: listEvents) { result in
            switch result {
            case .success(let data):
                self.updateToken(data.listEvents?.nextToken)
                self.updateEvents(data)

            case .failure(let error):
                print(error.localizedDescription)
            }
        }
    }

    private func mapEventItem(
        _ item: ListEventsQuery.Data.ListEvent.Item
    ) -> Event {
        return Event(
            id: item.id,
            name: item.name,
            venueName: item.venue.name,
            description: item.description
        )
    }
    
    private func updateEvents(_ data: ListEventsQuery.Data) {
        DispatchQueue.main.async { [weak self] in
            guard let self = self else { return }

            self.events = data.listEvents?.items?
                .compactMap { $0 }
                .map(self.mapEventItem) ?? []
        }
    }

    private func updateToken(_ token: String?) {
        self.token = token
    }
}
