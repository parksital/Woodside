//
//  RSVPView.swift
//  Woodside
//
//  Created by Parvin Sital on 20/01/2020.
//  Copyright © 2020 Parvin Sital. All rights reserved.
//

import SwiftUI

struct RSVPView: View {
    var body: some View {
        VStack(alignment: .center, spacing: 30, content: {
            Text("See you there?")
                .font(.title)
                .fontWeight(.heavy)
            Button("RSVP me", action: { })
            Spacer()
        })
            .padding()
            .frame(
                minWidth: 0.0,
                maxWidth: .infinity,
                minHeight: 0.0,
                maxHeight: .infinity
        )
            .background(Color.purple)
    }
}

struct RSVPView_Previews: PreviewProvider {
    static var previews: some View {
        RSVPView()
    }
}
