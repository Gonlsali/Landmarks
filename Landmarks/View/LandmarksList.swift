//
//  LandmarksList.swift
//  Landmarks
//
//  Created by Radhita Keniten on 02/05/24.
//

import SwiftUI

struct LandmarksList: View {
    var body: some View {
        List(landmarks, id: \.id) { landmark in
            LandmarkRow(landmark: landmark)
        }
    }
}

#Preview {
    LandmarksList()
}
