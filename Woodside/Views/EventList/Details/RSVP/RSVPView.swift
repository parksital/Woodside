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
        VStack(alignment: .center, spacing: 16.0, content: {
            Text(title)
                .font(.title)
                .fontWeight(.heavy)
            Spacer()
            Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Diam sollicitudin tempor id eu nisl nunc mi ipsum faucibus. Ultrices tincidunt arcu non sodales.")
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
        .padding()
    }
}

struct RSVPView_Previews: PreviewProvider {
    static var previews: some View {
        RSVPView()
    }
}
