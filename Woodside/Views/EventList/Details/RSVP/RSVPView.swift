//
//  RSVPView.swift
//  Woodside
//
//  Created by Parvin Sital on 20/01/2020.
//  Copyright © 2020 Parvin Sital. All rights reserved.
//

import SwiftUI

struct RSVPView: View {
    @State private var rsvp: Bool = false
    private var title: String { rsvp ? "See you there!🕺" : "See you there?   " }
    private var buttonTitle: String { rsvp ? "I'm out" : "I'm in!" }
    
    var body: some View {
        VStack(alignment: .center, spacing: 50, content: {
            Text(title)
                .font(.title)
                .fontWeight(.heavy)
            Spacer()
            Text("Create an account on Woodside to be listed on the guest list and stay up to date with the latest events")
            Button(
                action: { self.rsvp.toggle() },
                label: { Text(buttonTitle) }
            ).modifier(ButtonModifier(titleColor: .white, backgroundColor: .blue))
        })
            .frame(
                minWidth: 0.0,
                maxWidth: .infinity,
                minHeight: 0.0,
                maxHeight: .infinity
        )
    }
}

struct RSVPView_Previews: PreviewProvider {
    static var previews: some View {
        RSVPView()
    }
}
