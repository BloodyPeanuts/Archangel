//
//  ContentView.swift
//  Archangel
//
//  Created by Hesamoddin Aran  on 1/26/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView{
            Sessions()
                .tabItem {
                    Image(systemName: "calendar")
                    Text("Sessions")
                }
            Points()
                .tabItem {
                    Image(systemName: "hammer")
                    Text("Points")
                }
            scientia()
                .tabItem {
                    Image(systemName: "externaldrive.badge.icloud")
                    Text("Scientia")
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
