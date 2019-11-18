//
//  EventService.swift
//  Woodside
//
//  Created by Parvin Sital on 23/10/2019.
//  Copyright © 2019 Parvin Sital. All rights reserved.
//

import Foundation
import AWSAppSync
import Combine

protocol Events: ServiceProtocol {
    var token: String? { get set }
    func getAllEvents() -> AnyPublisher<[Event], Never>

    func getEventByID(
        id: GraphQLID,
        completion: @escaping (Result<GetEventQuery.Data.GetEvent>) -> Void
    )
    
    func getEventsForVenue(
        venueID: GraphQLID,
        completion: @escaping (Result<[GetVenueQuery.Data.GetVenue.Event.Item]>) -> Void
    )
}

extension Events {
    func getAllEvents() -> AnyPublisher<[Event], Never> {
        client.fetch(query: ListEventsQuery(limit: 20, nextToken: token))
            .map(unwrap(_:))
            .map(mapToEvent(_:))
            .replaceError(with: [])
            .eraseToAnyPublisher()
    }
    
    private func unwrap(_ data: ListEventsQuery.Data) -> [ListEventsQuery.Data.ListEvent.Item] {
        updateToken(data.listEvents?.nextToken)
        return data.listEvents?.items?.compactMap { $0 } ?? []
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
    
    private func updateToken(_ token: String?) {
        self.token = token
    }
    
    func getAllEvents(completion: @escaping (Result<[ListEventsQuery.Data.ListEvent.Item]>) -> Void) {
        client.fetch(query: ListEventsQuery()) { result in
            switch result {
            case .success(let data):
                let events = data.listEvents?.items?.compactMap { $0 } ?? []
                completion(.success(events))
            case .failure(let error):
                completion(.failure(error))
            }
        }
    }
    
    func getEventByID(
        id: GraphQLID,
        completion: @escaping (Result<GetEventQuery.Data.GetEvent>) -> Void
    ) {
        client.fetch(query: GetEventQuery(id: id)) { result in
            switch result {
            case .success(let data):
                guard let eventObject = data.getEvent else { return }
                completion(.success(eventObject))
            case .failure(let error):
                completion(.failure(error))
            }
        }
    }
    
    func getEventsForVenue(
        venueID: GraphQLID,
        completion: @escaping (Result<[GetVenueQuery.Data.GetVenue.Event.Item]>) -> Void
    ) {
        client.fetch(query: GetVenueQuery(id: venueID)) { result in
            switch result {
            case .success(let data):
                guard let venueObject = data.getVenue else { return }
                let events = venueObject.events?.items?.compactMap { $0 } ?? []
                events.forEach { print($0.name) }
                completion(.success(events))
            case .failure(let error):
                completion(.failure(error))
            }
        }
    }
}

final class EventService: Events {
    private (set) var client: APIClient!
    var token: String?

    init(client: APIClient) {
        self.client = client
    }

    init(client: APIClient? = AWSClient()) {
        self.client = client
    }
}
