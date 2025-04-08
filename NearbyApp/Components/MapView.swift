//
//  MapView.swift
//  NearbyApp
//
//  Created by André Nestor on 02/04/25.
//

import SwiftUI
import MapKit

struct MapView: View {
    @State private var region = MKCoordinateRegion(
        center: CLLocationCoordinate2D(latitude: -23.5505, longitude: -46.6333), // São Paulo como exemplo
        span: MKCoordinateSpan(latitudeDelta: 0.05, longitudeDelta: 0.05)
    )

    var body: some View {
        Map(coordinateRegion: $region)
            .ignoresSafeArea()
    }
}

#Preview {
    MapView()
}

