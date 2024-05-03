//
//  NotificationView.swift
//  WatchLandmarks Watch App
//
//  Created by Radhita Keniten on 03/05/24.
//

import SwiftUI

@available(iOS 17.0, *)
struct NotificationView: View {
    var title: String?
    var message: String?
    var landmark: Landmark?


    var body: some View {
        VStack {
            if let landmark {
                CircleImage(image: landmark.image.resizable())
                    .scaledToFit()
            }


            Text(title ?? "Unknown Landmark")
                .font(.headline)


            Divider()


            Text(message ?? "You are within 5 miles of one of your favorite landmarks.")
                .font(.caption)
        }
    }
}

@available(iOS 17.0, *)
#Preview {
    NotificationView(
        title: "Turtle Rock",
        message: "You are within 5 miles of Turtle Rock.",
        landmark: ModelData().landmarks[0])
}
