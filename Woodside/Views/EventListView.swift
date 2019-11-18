//
//  EventListView.swift
//  Woodside
//
//  Created by Parvin Sital on 23/10/2019.
//  Copyright © 2019 Parvin Sital. All rights reserved.
//

import SwiftUI

struct EventListView: View {
    @EnvironmentObject var eventStore: EventStore

    var body: some View {
        NavigationView {
            List {
                ForEach(eventStore.events, id: \.id, content: { event in
                    NavigationLink(destination: EmptyView(), label: { Text(event.name) })
                })
            }.navigationBarTitle("Events")
            .onAppear { self.eventStore.getEventList(limit: 20) }
        }
    }
}

struct EventListView_Previews: PreviewProvider {
    static var previews: some View {
        EventListView()
    }
}
