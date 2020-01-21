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
    @State private var bottomSheetShown: Bool = false
    var eventSummary: EventSummaryViewModel

    var body: some View {
        GeometryReader { geometry in
            ZStack {
                VStack(alignment: .leading) {
                    EventLightDetailView(
                        eventName: self.eventSummary.name,
                        venue: self.eventSummary.venue,
                        date: self.eventSummary.startDate
                    )
                    self.eventStore.event.map { EventHeavyDetailView(event: $0) }
                }
                BottomSheetView(
                    isOpen: self.$bottomSheetShown,
                    maxHeight: geometry.size.height * 0.8
                ) {
                    RSVPView()
                }.edgesIgnoringSafeArea(.bottom)
            }
        }
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
