//
//  Event.swift
//  Woodside
//
//  Created by Parvin Sital on 18/11/2019.
//  Copyright © 2019 Parvin Sital. All rights reserved.
//

import Foundation

struct Event: Identifiable {
    var id: String
    var name: String
    var venueName: String
    var date: String?
    var description: String?
}

extension Event: Decodable {
    enum CodingKeys: CodingKey {
        case id
        case name
        case venue
        case description
        
        enum VenueKeys: String, CodingKey {
            case venueName = "name"
        }
    }
    
    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        let venueContainer = try decoder.container(keyedBy: CodingKeys.VenueKeys.self)
        
        id = try container.decode(String.self, forKey: .id)
        name = try container.decode(String.self, forKey: .name)
        venueName = try venueContainer.decode(String.self, forKey: .venueName)
        description = try container.decodeIfPresent(String.self, forKey: .description)
    }
}
