//
//  EventService.swift
//  Woodside
//
//  Created by Parvin Sital on 23/10/2019.
//  Copyright © 2019 Parvin Sital. All rights reserved.
//

import Foundation

final class EventService: EventsProtocol {
    private (set) var client: APIClient!
    var token: String?

    init(client: APIClient) {
        self.client = client
    }

    init(client: APIClient? = AWSClient()) {
        self.client = client
    }
}
