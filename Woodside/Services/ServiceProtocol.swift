//
//  ServiceProtocol.swift
//  Woodside
//
//  Created by Parvin Sital on 29/10/2019.
//  Copyright © 2019 Parvin Sital. All rights reserved.
//

import Foundation
import AWSAppSync

protocol ServiceProtocol {
    var appSyncClient: AWSAppSyncClient! { get set }
    init()
}

extension ServiceProtocol {
    init() {
        self.init()
        let delegate = UIApplication.shared.delegate as! AppDelegate
        self.appSyncClient = delegate.appSyncClient
    }
}
