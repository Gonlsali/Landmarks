//
//  LandmarksApp.swift
//  Landmarks
//
//  Created by Radhita Keniten on 25/04/24.
//

import SwiftUI

@main
@available(iOS 17.0, *)
struct LandmarksApp: App {
    @State private var modelData = ModelData()


    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(modelData)
        }
    }
}
