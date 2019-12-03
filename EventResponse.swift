//
//  EventResponse.swift
//  Woodside
//
//  Created by Parvin Sital on 18/11/2019.
//  Copyright © 2019 Parvin Sital. All rights reserved.
//

import Foundation

struct EventResponse: Identifiable {
    var id: String
    var name: String
    var venueName: String
    var date: Date
    var description: String?
}

extension EventResponse: Decodable {
    enum CodingKeys: CodingKey {
        case id
        case name
        case venue
        case date
        case description
        
        enum VenueKeys: String, CodingKey {
            case venueName = "name"
        }
    }
    
    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        let venueContainer = try container.nestedContainer(keyedBy: CodingKeys.VenueKeys.self, forKey: .venue)
        
        id = try container.decode(String.self, forKey: .id)
        name = try container.decode(String.self, forKey: .name)
        venueName = try venueContainer.decode(String.self, forKey: .venueName)
        date = try container.decode(Date.self, forKey: .date)
        description = try container.decodeIfPresent(String.self, forKey: .description)
    }
}

extension EventResponse {
    func getEvent(dateFormatting: (Date) -> String) -> Event {
        return Event(
            id: self.id,
            name: self.name,
            venueName: self.venueName,
            date: dateFormatting(self.date),
            description: self.description
        )
    }
}
