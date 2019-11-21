//
//  VenueService.swift
//  Woodside
//
//  Created by Parvin Sital on 30/10/2019.
//  Copyright © 2019 Parvin Sital. All rights reserved.
//

import Foundation
import AWSAppSync
import Combine

// MARK: - TODO: Result<TYPEALIAS>
protocol Venues: ServiceProtocol {
    func getAllVenues(
        completion: @escaping (Result< [ListVenuesQuery.Data.ListVenue.Item]>) -> Void
    )
    
    func getVenueByID(
        id: GraphQLID,
        completion: @escaping (Result<GetVenueQuery.Data.GetVenue>) -> Void
    )
}

extension Venues {
    func getAllVenues(completion: @escaping (Result<[ListVenuesQuery.Data.ListVenue.Item]>) -> Void) {
        client.fetch(query: ListVenuesQuery()) { result in
            switch result {
            case .success(let data):
                let venues = data.listVenues?.items?
                    .compactMap { $0 } ?? []
                completion(.success(venues))
            case .failure(let error):
                completion(.failure(error))
            }
        }
    }

    func getVenueByID(id: GraphQLID, completion: @escaping (Result<GetVenueQuery.Data.GetVenue>) -> Void) {
        client.fetch(query: GetVenueQuery(id: id)) { result in
            switch result {
            case .success(let data):
                guard let venueObject = data.getVenue else { return }
                completion(.success(venueObject))
                return
            case .failure(let error): assertionFailure(error.localizedDescription)
            }
        }
    }
}

final class VenueService: Venues {
    private (set) var client: APIClient!
    private (set) var cancellable: AnyCancellable?

    init(client: APIClient) {
        self.client = client
    }
}
