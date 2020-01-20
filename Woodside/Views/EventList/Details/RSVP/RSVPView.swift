//
//  RSVPView.swift
//  Woodside
//
//  Created by Parvin Sital on 20/01/2020.
//  Copyright © 2020 Parvin Sital. All rights reserved.
//

import SwiftUI

enum ModalState: CGFloat {
    case lowered
    case summoned

    var offSetFromTop: CGFloat {
        switch self {
        case .summoned: return 30.0
        case .lowered: return UIScreen.main.bounds.height * 0.62
        }
    }
}

struct ModalModifier: ViewModifier {
    var modalState: ModalState

    func body(content: Content) -> some View {
        return content
            .offset(y: modalState.offSetFromTop)
    }
}

struct RSVPView: View {
    var body: some View {
        VStack(alignment: .center, spacing: 50.0, content: {
            Text("See you there?")
                .font(.title)
                .fontWeight(.heavy)
            Spacer()
            Button("RSVP me", action: { })
        })
            .padding()
            .frame(
                minWidth: 0.0,
                maxWidth: .infinity,
                minHeight: 0.0,
                maxHeight: .infinity
        )
            .background(Color.purple)
            .cornerRadius(30.0)
    }
}

struct RSVPView_Previews: PreviewProvider {
    static var previews: some View {
        RSVPView()
    }
}
