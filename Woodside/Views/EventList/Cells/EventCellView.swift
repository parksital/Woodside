//
//  EventCellView.swift
//  Woodside
//
//  Created by Parvin Sital on 10/12/2019.
//  Copyright © 2019 Parvin Sital. All rights reserved.
//

import SwiftUI

struct EventCellView: View {
    var event: EventSummaryViewModel
    var body: some View {
        NavigationLink(
            destination: EventDetailContainerView(eventSummary: event),
            label: {
                VStack(alignment: .leading, spacing: 0.0) {
                    Text(event.name)
                        .font(.headline)
                        .foregroundColor(.black)
                    Text(event.venue)
                        .font(.subheadline)
                        .foregroundColor(.black)
                }
        }
        )
    }
}

struct EventCellView_Previews: PreviewProvider {
    static var previews: some View {
        EventCellView(event: EventSummaryViewModel(
            id: UUID().uuidString,
            name: "Billionaire Girls Club",
            startDate: "25/12/2019",
            venue: "ABE Club & Lounge"
            )
        )
    }
}
