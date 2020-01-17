//
//  EventKeyInfoView.swift
//  Woodside
//
//  Created by Parvin Sital on 02/12/2019.
//  Copyright © 2019 Parvin Sital. All rights reserved.
//

import SwiftUI

struct EventLightDetailView: View {
    var eventName: String
    var venue: String
    var date: String

    var body: some View {
        VStack(alignment: .leading, spacing: 10.0, content: {
            Text(date)
                .fontWeight(.black)
                .font(.footnote)

            Text(eventName)
                .fontWeight(.heavy)
                .font(.title)

            Text(venue)
                .font(.body)
                .fontWeight(.regular)

        })
    }
}


struct EventLightDetailView_Previews: PreviewProvider {
    static var previews: some View {
        EventLightDetailView(
            eventName: "Billionaire Girls Club",
            venue: "ABE Club & Lounge",
            date: "20/02/2016"
        )
    }
}
