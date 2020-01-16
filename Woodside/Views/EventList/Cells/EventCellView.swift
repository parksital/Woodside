//
//  EventCellView.swift
//  Woodside
//
//  Created by Parvin Sital on 10/12/2019.
//  Copyright © 2019 Parvin Sital. All rights reserved.
//

import SwiftUI

struct EventCellView: View {
    var event: EventListItemViewModel
    var body: some View {
        VStack(alignment: .leading, spacing: 5.0) {
            NavigationLink(
                destination: EventDetailView(event: event),
                label: {
                    Text(event.name)
                        .font(.headline)
                        .foregroundColor(.black)
            }
            )
            Text(event.date)
        }
        .padding()
    }
}

struct EventCellView_Previews: PreviewProvider {
    static var previews: some View {
        EventCellView(event: EventListItemViewModel(
            id: UUID().uuidString,
            name: "Billionaire Girls Club",
            date: "25/12/2019",
            description: "Hottest monday in town"
            )
        )
    }
}
