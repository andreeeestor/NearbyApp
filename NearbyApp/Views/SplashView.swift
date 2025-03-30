//
//  SplashView.swift
//  NearbyApp
//
//  Created by André Nestor on 29/03/25.
//

import SwiftUI

struct SplashView: View {
    @ObservedObject var coordinator: AppCoordinator

    var body: some View {
        ZStack {
            
            Color.greenLight
            
            VStack(spacing: 8) {
                Image(systemName: "mappin.and.ellipse")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 50, height: 50)
                    .foregroundColor(.white)
                    
                
                Text("Nearby")
                    .font(.largeTitle)
                    .bold()
                Text("Clube de Benefícios")
                    .font(.caption)
                
                
                ProgressView()
                    .padding()
            }
            .onAppear {
                DispatchQueue.main.asyncAfter(deadline: .now() + 2) { // Aguarda 2 segundos
                    // coordinator.goToHome()
                }
            }
            .foregroundStyle(.white)
        }.ignoresSafeArea()
    }
}

#Preview {
    SplashView(coordinator: AppCoordinator())
}

