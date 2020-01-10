//
//  ServiceProtocol.swift
//  Woodside
//
//  Created by Parvin Sital on 29/10/2019.
//  Copyright © 2019 Parvin Sital. All rights reserved.
//

import Foundation
import AWSAppSync
import Combine

protocol ServiceProtocol: class {
    var client: APIClient! { get }
    var token: String? { get set }
    init(client: APIClient)
}
