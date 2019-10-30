//
//  ServiceProtocol.swift
//  Woodside
//
//  Created by Parvin Sital on 29/10/2019.
//  Copyright © 2019 Parvin Sital. All rights reserved.
//

import Foundation
import AWSAppSync

protocol ServiceProtocol: class {
    var appSyncClient: AWSAppSyncClient! { get }
    var cancellable: Cancellable? { get set }
    init(client: AWSAppSyncClient)
}
