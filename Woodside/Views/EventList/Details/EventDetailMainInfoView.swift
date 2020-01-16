//
//  EventKeyInfoView.swift
//  Woodside
//
//  Created by Parvin Sital on 02/12/2019.
//  Copyright © 2019 Parvin Sital. All rights reserved.
//

import SwiftUI

struct EventDetailMainInfoView: View {
    var eventName: String
    var date: String

    var body: some View {
        VStack(alignment: .leading, spacing: 10.0, content: {
            Text(eventName)
                .fontWeight(.heavy)
                .font(.title)

            Text(date)
                .fontWeight(.black)
                .font(.footnote)
        })
    }
}


struct EventKeyInfoView_Previews: PreviewProvider {
    static var previews: some View {
        EventDetailMainInfoView(
            eventName: "Billionaire Girls Club",
            date: "20/02/2016"
        )
    }
}
