//
//  BottomSheetView.swift
//  Woodside
//
//  Created by Parvin Sital on 21/01/2020.
//  Copyright © 2020 Parvin Sital. All rights reserved.
//

import SwiftUI

struct BottomSheetView<Content: View>: View {
    @Binding var isOpen: Bool
    private let maxHeight: CGFloat
    private let minHeight: CGFloat
    private var slack: CGFloat { openOffset / 2 }
    private let openOffset: CGFloat = 100
    private let content: Content
    
    @GestureState private var translation: CGFloat = 0
    private var offset: CGFloat {
        isOpen ? openOffset : maxHeight - minHeight
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
                .padding([.top, .leading, .trailing], 16.0)
                .padding(.bottom, self.openOffset + self.slack)
                .frame(width: geometry.size.width, height: self.maxHeight, alignment: .top)
                .background(Color(.secondarySystemBackground))
                .cornerRadius(16.0)
                .frame(height: geometry.size.height, alignment: .bottom)
                .offset(y: max(self.offset + self.translation, self.slack))
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

struct BottomSheetView_Previews: PreviewProvider {
    static var previews: some View {
        BottomSheetView(
            isOpen: .constant(true),
            maxHeight: 800.0,
            content: { Text("Testing") }
        )
    }
}
