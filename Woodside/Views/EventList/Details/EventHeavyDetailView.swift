//
//  EventHeavyDetailView.swift
//  Woodside
//
//  Created by Parvin Sital on 17/01/2020.
//  Copyright © 2020 Parvin Sital. All rights reserved.
//

import SwiftUI

struct EventHeavyDetailView: View {
    var event: EventDetailViewModel
    var body: some View {
        VStack(alignment: .leading, spacing: 10.0, content: {
            event.description.map {
                Text($0)
                    .font(.body)
                    .fontWeight(.regular)
            }
            ForEach(event.artists, id: \.id, content: { Text($0) })
            Spacer()
        })
    }
}

struct EventHeavyDetailView_Previews: PreviewProvider {
    static var previews: some View {
        EventHeavyDetailView(event: .default)
    }
}
