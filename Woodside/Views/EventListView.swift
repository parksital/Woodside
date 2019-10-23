//
//  EventListView.swift
//  Woodside
//
//  Created by Parvin Sital on 23/10/2019.
//  Copyright © 2019 Parvin Sital. All rights reserved.
//

import SwiftUI

struct EventListView: View {
    @State private var events: [Event] = [
        Event(id: UUID(), name: "THRWBCK"),
        Event(id: UUID(), name: "Billionaire Girls Club"),
        Event(id: UUID(), name: "Saucy"),
        Event(id: UUID(), name: "Dutty")
    ]

    var body: some View {
        List(events) { event in
            Text(event.name)
        }
    }
}

struct EventListView_Previews: PreviewProvider {
    static var previews: some View {
        EventListView()
    }
}
