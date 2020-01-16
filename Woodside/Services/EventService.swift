//
//  EventService.swift
//  Woodside
//
//  Created by Parvin Sital on 23/10/2019.
//  Copyright © 2019 Parvin Sital. All rights reserved.
//

import Foundation
import Combine

final class EventService: ServiceProtocol {
    private (set) var client: APIClient!
    private (set) var decoder: JSONDecoder  = {
        let decoder = JSONDecoder()
        decoder.dateDecodingStrategy = .iso8601
        return decoder
    }()
    var token: String?

    init(client: APIClient) {
        self.client = client
    }

    init(client: APIClient? = AWSClient()) {
        self.client = client
    }
}

extension EventService {

    func getSortedEvents() -> AnyPublisher<[EventListItemViewModel], Never> {
        return client.fetch(query: EventsByDateQuery(type: "Event", sortDirection: .desc, limit: 20, nextToken: token))
            .compactMap { $0.eventsByDate }
            .handleEvents(receiveOutput: { self.token = $0.nextToken })
            .compactMap { $0.items?.compactMap { $0 } }
            .map { $0.map { $0.jsonObject } }
            .filter { JSONSerialization.isValidJSONObject($0) }
            .tryMap { try JSONSerialization.data(withJSONObject: $0, options: .prettyPrinted) }
            .decode(type: [EventListItemViewModel].self, decoder: decoder)
            .handleEvents(receiveCompletion: { completion in
                switch completion {
                case .finished: print("finished fetching events for main list")
                case .failure(let error): assertionFailure(error.localizedDescription)
                }
            })
            .replaceError(with: [])
            .eraseToAnyPublisher()
    }
    
    func getEventByID(_ eventID: String) -> AnyPublisher<EventResponse?, Never> {
        return client.fetch(query: GetEventQuery(id: eventID))
            .compactMap { $0.getEvent?.jsonObject }
            .filter { JSONSerialization.isValidJSONObject($0) }
            .tryMap { try JSONSerialization.data(withJSONObject: $0, options: .prettyPrinted) }
            .decode(type: EventResponse?.self, decoder: decoder)
            .handleEvents(receiveCompletion: { completion in
                switch completion {
                case .finished: print("finished fetching event")
                case .failure(let error): print(error)
                }
            })
            .replaceError(with: nil)
            .eraseToAnyPublisher()
    }
}
