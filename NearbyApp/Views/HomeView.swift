//
//  HomeView.swift
//  NearbyApp
//
//  Created by André Nestor on 31/03/25.
//

import SwiftUI
import MapKit

struct HomeView: View {
    @ObservedObject var coordinator: AppCoordinator
    var body: some View {
        ZStack(alignment: .bottom) {
            MapView()
            ContainerView()
                .offset(y: 350)
        }
    }
}

#Preview {
    HomeView(coordinator: AppCoordinator())
}

