//
//  EventDetailViewModel.swift
//  Woodside
//
//  Created by Parvin Sital on 17/01/2020.
//  Copyright © 2020 Parvin Sital. All rights reserved.
//

import Foundation

struct Artist: Decodable {
    let id: String
    let name: String
    let description: String?
}

struct EventDetailViewModel {
    let id: String
    let name: String
    let iso8601startDate: Date
    let iso8601endDate: Date
    var startDate: String = ""
    var endDate: String = ""
    let venue: String
    let artists: [Artist]
    let description: String?
}

extension EventDetailViewModel: Decodable {
    enum CodingKeys: String, CodingKey {
        case id
        case name
        case iso8601startDate = "start_date"
        case iso8601endDate = "end_date"
        case venue
        case artists
        case description
        
        enum ModelConnectionKeys: String, CodingKey {
            case items
            
            enum ItemKeys: String, CodingKey {
                case artist
            }
        }

        enum VenueKeys: CodingKey {
            case name
        }
    }
    
    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        let venueContainer = try container.nestedContainer(keyedBy: CodingKeys.VenueKeys.self, forKey: .venue)
        let modelConnectionContainer = try container.nestedContainer(keyedBy: CodingKeys.ModelConnectionKeys.self, forKey: .artists)

        id = try container.decode(String.self, forKey: .id)
        name = try container.decode(String.self, forKey: .name)
        iso8601startDate = try container.decode(Date.self, forKey: .iso8601startDate)
        iso8601endDate = try container.decode(Date.self, forKey: .iso8601endDate)
        venue = try venueContainer.decode(String.self, forKey: .name)
        description = try container.decode(String?.self, forKey: .description)

        var unkeyedItems = try modelConnectionContainer.nestedUnkeyedContainer(forKey: .items)
        var decodedArtists: [Artist] = []
        while !unkeyedItems.isAtEnd {
            let booking = try unkeyedItems.nestedContainer(keyedBy: CodingKeys.ModelConnectionKeys.ItemKeys.self)
            precondition(booking.contains(.artist))
            let artist = try booking.decode(Artist.self, forKey: .artist)
            decodedArtists.append(artist)
        }

        artists = decodedArtists
    }
}

extension EventDetailViewModel {
    func getEvent(
        startDateFormatting: (Date) -> String,
        endDateFormatting: (Date) -> String
    ) -> EventDetailViewModel {
        return EventDetailViewModel(
            id: self.id,
            name: self.name,
            iso8601startDate: self.iso8601startDate,
            iso8601endDate: self.iso8601endDate,
            startDate: startDateFormatting(iso8601startDate),
            endDate: endDateFormatting(iso8601endDate),
            venue: self.venue,
            artists: self.artists,
            description: self.description
        )
    }
}

extension EventDetailViewModel {
    static var `default`: EventDetailViewModel {
        EventDetailViewModel(
            id: UUID().uuidString,
            name: "Test Event",
            iso8601startDate: Date(),
            iso8601endDate: Date(),
            venue: "Test Venue",
            artists: [],
            description: nil
        )
    }
}
