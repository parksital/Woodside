//
//  EventDetailContainerView.swift
//  Woodside
//
//  Created by Parvin Sital on 21/11/2019.
//  Copyright © 2019 Parvin Sital. All rights reserved.
//

import SwiftUI

struct EventDetailContainerView: View {
    @EnvironmentObject var eventStore: EventStore
    @State private var bottomSheetShown: Bool = false
    var eventSummary: EventSummaryViewModel
    
    struct DateTimes: View {
        private let separator: String = "-"
        let event: EventDetailViewModel
        var body: some View {
            HStack {
                Text(event.startDate)
                    .font(.footnote)
                    .fontWeight(.heavy)
                
                Text(self.separator)
                    .font(.footnote)
                    .fontWeight(.heavy)
                
                Text(event.endDate)
                    .font(.footnote)
                    .fontWeight(.heavy)
            }
        }
    }
    
    var body: some View {
        GeometryReader { geometry in
            ZStack {
                ScrollView(.vertical, showsIndicators: false, content: {
                    self.eventStore.event.map { event in
                        VStack(alignment: .leading, spacing: 10.0) {
                            VStack(alignment: .leading, spacing: 1.0, content: {
                                Text(event.venue)
                                    .font(.headline)
                                    .fontWeight(.bold)
                                
                                DateTimes(event: event)
                            })
                            Text(event.description ?? "")
                                .font(.body)
                                .fontWeight(.regular)
                            
                            ForEach(event.artists, id: \.id, content: { Text($0.name) })
                        }.padding(.horizontal)
                            .frame(width: geometry.size.width)
                    }
                })
                
                BottomSheetView(
                    isOpen: self.$bottomSheetShown,
                    maxHeight: geometry.size.height * 0.8
                ) {
                    RSVPView()
                }
            }
        }
        .edgesIgnoringSafeArea(.bottom)
        .navigationBarTitle(self.eventSummary.name)
        .onAppear(perform: { [eventStore, eventSummary] in
            eventStore.getEventByID(id: eventSummary.id)
        })
    }
}

struct EventDetailView_Previews: PreviewProvider {
    static var previews: some View {
        EventDetailContainerView(eventSummary: EventSummaryViewModel(
            id: UUID().uuidString,
            name: "Billionaire Girls Club",
            startDate: "25/01/1990",
            venue: "ABE Club & Lounge"
            )
        )
    }
}
