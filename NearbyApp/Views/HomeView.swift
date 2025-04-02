//
//  HomeView.swift
//  NearbyApp
//
//  Created by André Nestor on 31/03/25.
//

import SwiftUI

struct HomeView: View {
    @ObservedObject var coordinator: AppCoordinator
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

#Preview {
    HomeView(coordinator: AppCoordinator())
}

