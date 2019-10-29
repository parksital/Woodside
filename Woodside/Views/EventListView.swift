//
//  EventListView.swift
//  Woodside
//
//  Created by Parvin Sital on 23/10/2019.
//  Copyright © 2019 Parvin Sital. All rights reserved.
//

import SwiftUI

struct EventListView: View {
    @State private var events: [String] = [
        "BBB",
        "Woelig",
        "Dutty"
    ]

    var body: some View {
        List {
            ForEach(self.events, id: \.self, content: {
                Text($0)
            })
        }
    }
}

struct EventListView_Previews: PreviewProvider {
    static var previews: some View {
        EventListView()
    }
}
