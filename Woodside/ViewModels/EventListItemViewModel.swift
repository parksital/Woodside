//
//  EventListItemViewModel.swift
//  Woodside
//
//  Created by Parvin Sital on 17/01/2020.
//  Copyright © 2020 Parvin Sital. All rights reserved.
//

import Foundation

struct EventListItemViewModel: Identifiable {
    let id: String
    let name: String
    let date: String
    let venue: String
    let description: String?
}

extension EventListItemViewModel: Decodable {
    enum CodingKeys: CodingKey {
        case id
        case name
        case date
        case venue
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
        date = try container.decode(String.self, forKey: .date)
        venue = try venueContainer.decode(String.self, forKey: .name)
        description = try container.decode(String?.self, forKey: .description)

    }
}

//extension EventResponse {
//    func getEvent(dateFormatting: (Date) -> String) -> Event {
//        return Event(
//            id: self.id,
//            name: self.name,
//            venueName: self.venueName,
//            date: dateFormatting(self.date),
//            description: self.description
//        )
//    }
//}
