//
//  ButtonModifier.swift
//  Woodside
//
//  Created by Parvin Sital on 21/01/2020.
//  Copyright © 2020 Parvin Sital. All rights reserved.
//

import SwiftUI

struct ButtonModifier: ViewModifier {
    @State private var titleColor: Color = .white
    @State private var backgroundColor: Color = .blue

    init(titleColor: Color, backgroundColor: Color) {
        self.titleColor = titleColor
        self.backgroundColor = backgroundColor
    }

    func body(content: Content) -> some View {
        return content
            .padding()
            .background(backgroundColor)
            .foregroundColor(titleColor)
            .font(.headline)
            .cornerRadius(10.0)
    }
}
