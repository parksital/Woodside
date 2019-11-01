//
//  EventService.swift
//  Woodside
//
//  Created by Parvin Sital on 23/10/2019.
//  Copyright © 2019 Parvin Sital. All rights reserved.
//

import Foundation
import AWSAppSync

protocol Events: ServiceProtocol {
    func getAllEvents(
        completion: @escaping (Result<[ListEventsQuery.Data.ListEvent.Item]>) -> Void
    )

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
    private (set) var cancellable: Cancellable?

    init(client: APIClient) {
        self.client = client
    }
}
