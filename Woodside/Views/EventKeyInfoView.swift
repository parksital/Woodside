//
//  EventKeyInfoView.swift
//  Woodside
//
//  Created by Parvin Sital on 02/12/2019.
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


struct EventKeyInfoView_Previews: PreviewProvider {
    static var previews: some View {
        EventKeyInfoView(
            eventName: "Billionaire Girls Club",
            venueName: "ABE Club & Lounge",
            date: "20/02/2016"
        )
    }
}
