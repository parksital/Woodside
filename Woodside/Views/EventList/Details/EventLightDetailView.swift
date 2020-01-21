//
//  EventKeyInfoView.swift
//  Woodside
//
//  Created by Parvin Sital on 02/12/2019.
//  Copyright © 2019 Parvin Sital. All rights reserved.
//

import SwiftUI

struct EventLightDetailView: View {
    var venue: String
    var date: String
    var startTime: String?
    var endTime: String?
    
    private let separator: String = "-"

    var body: some View {
        VStack(alignment: .leading, spacing: 1.0, content: {
            Text(venue)
                .font(.headline)
                .fontWeight(.bold)

            Text(date)
                .font(.footnote)
                .fontWeight(.heavy)
            
            HStack {
                startTime.map {
                    Text($0)
                        .font(.footnote)
                        .fontWeight(.heavy)
                }
                
                Text(separator)
                    .font(.footnote)
                    .fontWeight(.heavy)
                
                endTime.map {
                    Text($0)
                        .font(.footnote)
                        .fontWeight(.heavy)
                }
            }
        })
    }
}


struct EventLightDetailView_Previews: PreviewProvider {
    static var previews: some View {
        EventLightDetailView(
            venue: "ABE Club & Lounge",
            date: "20/02/2016",
            startTime: "22:00",
            endTime: "04:00"
        )
    }
}
