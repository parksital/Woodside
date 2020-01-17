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
        return client.fetch(query: EventsVenueNamesByStartDateQuery(type: "Event", sortDirection: .asc, limit: 20, nextToken: token))
            .compactMap { $0.eventsByStartDate }
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
}
