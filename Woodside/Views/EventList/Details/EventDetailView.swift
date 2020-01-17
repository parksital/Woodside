//
//  EventDetailView.swift
//  Woodside
//
//  Created by Parvin Sital on 21/11/2019.
//  Copyright © 2019 Parvin Sital. All rights reserved.
//

import SwiftUI

struct EventDetailView: View {
    var event: EventSummaryViewModel

    var body: some View {
        VStack(alignment: .leading, spacing: 10.0, content: {
            // Some header image
            EventDetailMainInfoView(
                eventName: event.name,
                date: event.startDate
            )
            Spacer()
        })
    }
}

struct EventDetailView_Previews: PreviewProvider {
    static var previews: some View {
        EventDetailView(event: EventSummaryViewModel(
            id: UUID().uuidString,
            name: "Billionaire Girls Club",
            startDate: "25/01/1990",
            venue: "ABE Club & Lounge"
            )
        )
    }
}
