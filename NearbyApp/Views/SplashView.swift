//
//  SplashView.swift
//  NearbyApp
//
//  Created by André Nestor on 29/03/25.
//

import SwiftUI

struct SplashView: View {
    @ObservedObject var coordinator: AppCoordinator
    @State private var isAnimating = false
    @State private var isActive = false
    @State private var moveToLeft = false
    
    var body: some View {
        ZStack {
            
            Color.greenLight.ignoresSafeArea()
            
            VStack(spacing: 12) {
                Image(systemName: "mappin.and.ellipse")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 50, height: 50)
                    .foregroundColor(.white)
                    .scaleEffect(isAnimating ? 1 : 0.8)
                    .opacity(isAnimating ? 1 : 0)
                
                Text("Nearby")
                    .font(.largeTitle)
                    .bold()
                    .opacity(isAnimating ? 1 : 0)
                    .offset(y: isAnimating ? 0 : 10)
                Text("Clube de Benefícios")
                    .font(.caption)
                    .opacity(isAnimating ? 1 : 0)
                    .offset(y: isAnimating ? 0 : 10)
                
                ProgressView()
                    .padding()
                    .opacity(isAnimating ? 1 : 0)
            }
            .onAppear {
                withAnimation(.easeOut(duration: 1)) {
                    isAnimating = true
                }
                DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
                    isActive = true
                    
                }
            }
            .fullScreenCover(isPresented: $isActive) {
                WelcomeView(coordinator: coordinator)
                    .transition(.move(edge: .trailing))
            }
            .foregroundStyle(.white)
        }
    }
}

#Preview {
    SplashView(coordinator: AppCoordinator())
}

