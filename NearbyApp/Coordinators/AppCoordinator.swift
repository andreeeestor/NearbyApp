//
//  AppCoordinator.swift
//  NearbyApp
//
//  Created by André Nestor on 29/03/25.
//

import SwiftUI

protocol Coordinator: ObservableObject {
    func start() -> AnyView
}

class AppCoordinator: ObservableObject, Coordinator {
    @Published var currentView: AnyView = AnyView(EmptyView())

    init() {
        self.currentView = AnyView(SplashView(coordinator: self))
    }

    func start() -> AnyView {
        return currentView
    }
    
    func goToWelcome() {
        withAnimation(.easeInOut(duration: 1)) {
            self.currentView = AnyView(WelcomeView(coordinator: self).transition(.move(edge: .bottom)))
        }
    }


    func goToHome() {
        withAnimation(.easeInOut(duration: 1)) {
            self.currentView = AnyView(HomeView(coordinator: self).transition(.move(edge: .trailing)))
        }
    }
    /*
    func goToDetail() {
        self.currentView = AnyView(DetailView()) // Ajuste conforme necessário
    }
     */
}

