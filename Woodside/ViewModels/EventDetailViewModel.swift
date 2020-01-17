//
//  EventDetailViewModel.swift
//  Woodside
//
//  Created by Parvin Sital on 17/01/2020.
//  Copyright © 2020 Parvin Sital. All rights reserved.
//

import Foundation

extension String: Identifiable {
    public var id: String { self }
}

struct EventDetailViewModel {
    let id: String
    let name: String
    let startDate: String
    let endDate: String
    let venue: String
    let artists: [String]
    let description: String?
}

extension EventDetailViewModel: Decodable {
    enum CodingKeys: String, CodingKey {
        case id
        case name
        case startDate = "start_date"
        case endDate = "end_date"
        case venue
        case artists
        case description

        enum VenueKeys: CodingKey {
            case name
        }
    }
    
    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        let venueContainer = try container.nestedContainer(keyedBy: CodingKeys.VenueKeys.self, forKey: .venue)
        id = try container.decode(String.self, forKey: .id)
        name = try container.decode(String.self, forKey: .name)
        startDate = try container.decode(String.self, forKey: .startDate)
        endDate = try container.decode(String.self, forKey: .endDate)
        venue = try venueContainer.decode(String.self, forKey: .name)
        artists = try container.decode([String].self, forKey: .artists)
        description = try container.decode(String?.self, forKey: .description)
    }
}

extension EventDetailViewModel {
    static var `default`: EventDetailViewModel {
        EventDetailViewModel(
            id: UUID().uuidString,
            name: "Test Event",
            startDate: "",
            endDate: "",
            venue: "Test Venue",
            artists: [],
            description: nil
        )
    }
}
