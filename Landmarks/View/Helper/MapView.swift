//
//  MapView.swift
//  Landmarks
//
//  Created by Radhita Keniten on 25/04/24.
//

import SwiftUI
import MapKit

@available(iOS 17.0, *)
struct MapView: View {
    var coordinate: CLLocationCoordinate2D


    @AppStorage("MapView.zoom")
    private var zoom: Zoom = .medium


    enum Zoom: String, CaseIterable, Identifiable {
        case near = "Near"
        case medium = "Medium"
        case far = "Far"


        var id: Zoom {
            return self
        }
    }


    var delta: CLLocationDegrees {
        switch zoom {
        case .near: return 0.02
        case .medium: return 0.2
        case .far: return 2
        }
    }


    var body: some View {
        Map(initialPosition: .region(region))
    }


    private var region: MKCoordinateRegion {
        MKCoordinateRegion(
            center: coordinate,
            span: MKCoordinateSpan(latitudeDelta: delta, longitudeDelta: delta)
        )
    }
}

@available(iOS 17.0, *)
#Preview {
    MapView(coordinate: CLLocationCoordinate2D(latitude: 34.011_286, longitude: -116.166_868))
}
