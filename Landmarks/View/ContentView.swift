//
//  ContentView.swift
//  Landmarks
//
//  Created by Radhita Keniten on 25/04/24.
//

import SwiftUI

@available(iOS 17.0, *)
struct ContentView: View {
    var body: some View {
        LandmarkList()
    }
}

@available(iOS 17.0, *)
#Preview {
    ContentView()
        .environment(ModelData())
}
