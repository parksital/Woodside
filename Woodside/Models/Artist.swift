//
//  Artist.swift
//  Woodside
//
//  Created by Parvin Sital on 24/01/2020.
//  Copyright © 2020 Parvin Sital. All rights reserved.
//

import Foundation

struct Artist: Decodable {
    let id: String
    let name: String
    let description: String?
}
