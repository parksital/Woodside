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
                ScrollView(.vertical, showsIndicators: false, content: {
                    VStack(alignment: .leading) {
                        EventLightDetailView(
                            venue: self.eventSummary.venue,
                            date: self.eventSummary.startDate,
                            startTime: self.eventStore.event?.startDate,
                            endTime: self.eventStore.event?.endDate
                        )
                        self.eventStore.event.map { EventHeavyDetailView(event: $0) }
                        }
                    .padding(.horizontal)
                    .frame(width: geometry.size.width)
                }).padding(.bottom, geometry.size.height * 0.1)
                
                BottomSheetView(
                    isOpen: self.$bottomSheetShown,
                    maxHeight: geometry.size.height * 0.8
                ) {
                    RSVPView()
                }.edgesIgnoringSafeArea(.bottom)
            }
        }.navigationBarTitle(self.eventSummary.name)
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
