//
//  LandmarksList.swift
//  Landmarks
//
//  Created by Radhita Keniten on 02/05/24.
//

import SwiftUI

@available(iOS 17.0, *)
struct LandmarksList: View {
    var body: some View {
        NavigationSplitView {
            List(landmarks) { landmark in
                NavigationLink {
                    LandmarkDetail()
                } label: {
                    LandmarkRow(landmark: landmark)
                }
            }
            .navigationTitle("Landmarks")
        } detail: {
            Text("Select a Landmark")
        }
    }
}

@available(iOS 17.0, *)
#Preview {
    LandmarksList()
}
