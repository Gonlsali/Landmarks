//
//  ContentView.swift
//  Landmarks
//
//  Created by Radhita Keniten on 25/04/24.
//

import SwiftUI

@available(iOS 17.0, *)
struct ContentView: View {
    @State private var selection: Tab = .featured


    enum Tab {
        case featured
        case list
    }


    var body: some View {
        TabView(selection: $selection) {
            CategoryHome()
                .tabItem {
                    Label("Featured", systemImage: "star")
                }
                .tag(Tab.featured)


            LandmarkList()
                .tabItem {
                    Label("List", systemImage: "list.bullet")
                }
                .tag(Tab.list)
        }
    }
}

@available(iOS 17.0, *)
#Preview {
    ContentView()
        .environment(ModelData())
}
