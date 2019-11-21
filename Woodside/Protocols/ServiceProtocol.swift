//
//  ServiceProtocol.swift
//  Woodside
//
//  Created by Parvin Sital on 29/10/2019.
//  Copyright © 2019 Parvin Sital. All rights reserved.
//

import Foundation

protocol ServiceProtocol: class {
    var client: APIClient! { get }
    init(client: APIClient)
}
