//
//  EventDetailView.swift
//  Woodside
//
//  Created by Parvin Sital on 21/11/2019.
//  Copyright © 2019 Parvin Sital. All rights reserved.
//

import SwiftUI

struct EventDetailView: View {
    @EnvironmentObject var eventStore: EventStore
    var eventSummary: EventSummaryViewModel
    
    var body: some View {
        VStack(alignment: .leading, spacing: 10.0, content: {
            // Some header image
            EventLightDetailView(
                eventName: eventSummary.name,
                venue: eventSummary.venue,
                date: eventSummary.startDate
            )
            
            eventStore.event.map { EventHeavyDetailView(event: $0) }
        })
            .onAppear(perform: { [eventStore, eventSummary] in
                eventStore.getEventByID(id: eventSummary.id)
            })
    }
}

struct EventDetailView_Previews: PreviewProvider {
    static var previews: some View {
        EventDetailView(eventSummary: EventSummaryViewModel(
            id: UUID().uuidString,
            name: "Billionaire Girls Club",
            startDate: "25/01/1990",
            venue: "ABE Club & Lounge"
            )
        )
    }
}
