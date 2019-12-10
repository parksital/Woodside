//
//  Event.swift
//  Woodside
//
//  Created by Parvin Sital on 03/12/2019.
//  Copyright © 2019 Parvin Sital. All rights reserved.
//

import Foundation

struct Event: Identifiable {
    var id: String
    var name: String
    var venueName: String
    var date: String
    var description: String?
}

extension Array where Element == EventResponse {
    var ascending: [EventResponse] {
        sorted { $0.date < $1.date }
    }
}
