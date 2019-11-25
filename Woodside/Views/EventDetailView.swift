//
//  EventDetailView.swift
//  Woodside
//
//  Created by Parvin Sital on 21/11/2019.
//  Copyright © 2019 Parvin Sital. All rights reserved.
//

import SwiftUI

struct EventKeyInfoView: View {
    var eventName: String
    var venueName: String
    var date: String

    var body: some View {
        VStack(alignment: .leading, spacing: 10.0, content: {
            Text(eventName)
                .fontWeight(.heavy)
                .font(.title)
            
            Text(venueName)
                .fontWeight(.bold)
                .font(.body)
            
            Text(date)
                .fontWeight(.black)
                .font(.footnote)
        })
    }
}

struct EventDetailView: View {
    var event: Event

    var body: some View {
        VStack(alignment: .leading, spacing: 10.0, content: {
            // Some header image
            EventKeyInfoView(
                eventName: event.name,
                venueName: event.venueName,
                date: ""
            )

            event.description.map { Text($0) }?.fontWeight(.regular)
                .font(.callout)
            
            Spacer()
        })
    }
}

struct EventDetailView_Previews: PreviewProvider {
    static var previews: some View {
        EventDetailView(event: Event(
            id: UUID().uuidString,
            name: "Billionaire Girls Club",
            venueName: "ABE Club & Lounge",
            description: "Hottest monday in town"
            )
        )
    }
}
