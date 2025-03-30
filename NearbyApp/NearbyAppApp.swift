//
//  NearbyAppApp.swift
//  NearbyApp
//
//  Created by André Nestor on 29/03/25.
//

import SwiftUI

@main
struct NearbyAppApp: App {
    
    @StateObject var coordinator = AppCoordinator()
    
    var body: some Scene {
        WindowGroup {
            coordinator.start()
        }
    }
}
