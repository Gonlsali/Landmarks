//
//  ContentView.swift
//  WatchLandmarks Watch App
//
//  Created by Radhita Keniten on 03/05/24.
//

import SwiftUI
import UserNotifications

@available(iOS 17.0, *)
struct ContentView: View {
    var body: some View {
        LandmarkList()
            .task {
                let center = UNUserNotificationCenter.current()
                _ = try? await center.requestAuthorization(
                    options: [.alert, .sound, .badge]
                )
            }
    }
}

@available(iOS 17.0, *)
#Preview {
    ContentView()
        .environment(ModelData())
}
