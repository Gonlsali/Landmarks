//
//  LandmarkRow.swift
//  Landmarks
//
//  Created by Radhita Keniten on 02/05/24.
//

import SwiftUI

struct LandmarkRow: View {
    var landmark: Landmark


    var body: some View {
        HStack {
            landmark.image
                .resizable()
                .frame(width: 50, height: 50)
                .cornerRadius(5)
            Text(landmark.name)


            Spacer()


            if landmark.isFavorite {
                Image(systemName: "star.fill")
                    .imageScale(.medium)
                    .foregroundStyle(.yellow)
            }
        }
    }
}

@available(iOS 17.0, *)
#Preview {
    let landmarks = ModelData().landmarks
    return Group {
        LandmarkRow(landmark: landmarks[0])
        LandmarkRow(landmark: landmarks[1])
    }
}
