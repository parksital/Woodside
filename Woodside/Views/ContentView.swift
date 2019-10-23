//
//  ContentView.swift
//  Woodside
//
//  Created by Parvin Sital on 20/10/2019.
//  Copyright © 2019 Parvin Sital. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView(content: {
            EventListView()
                .tabItem {
                    Image(systemName: "rectangle.grid.1x2")
                    Text("Events")
            }
            
            Text("AccountView")
                .tabItem {
                    Image(systemName: "person.crop.circle")
                    Text("Account")
            }
        }).edgesIgnoringSafeArea(.top)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
