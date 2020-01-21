//
//  RSVPView.swift
//  Woodside
//
//  Created by Parvin Sital on 20/01/2020.
//  Copyright © 2020 Parvin Sital. All rights reserved.
//

import SwiftUI

struct BottomSheetView<Content: View>: View {
    @Binding var isOpen: Bool
    private let maxHeight: CGFloat
    private let minHeight: CGFloat
    private let content: Content
    
    @GestureState private var translation: CGFloat = 0
    private var offset: CGFloat {
        isOpen ? 0 : maxHeight - minHeight
    }

    init(isOpen: Binding<Bool>, maxHeight: CGFloat, @ViewBuilder content: () -> Content) {
        self.minHeight = maxHeight * 0.35
        self.maxHeight = maxHeight
        self.content = content()
        self._isOpen = isOpen
    }
    var body: some View {
        GeometryReader { geometry in
            self.content
                .frame(width: geometry.size.width, height: self.maxHeight, alignment: .top)
                .background(Color(.secondarySystemBackground))
                .cornerRadius(16.0)
                .frame(height: geometry.size.height, alignment: .bottom)
                .offset(y: max(self.offset + self.translation, -50))
                .animation(.interactiveSpring())
                .shadow(radius: 10.0)
                .onTapGesture { self.isOpen = true }
                .gesture(DragGesture().updating(self.$translation) { value, state, _ in
                    state = value.translation.height
                }
                .onEnded { value in
                    let snapDistance = self.maxHeight * 0.25
                    guard abs(value.translation.height) > snapDistance else { return }
                    self.isOpen = value.translation.height < 0
                    }
            )
        }
    }
}

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
