//
//  WelcomeView.swift
//  NearbyApp
//
//  Created by André Nestor on 30/03/25.
//

import SwiftUI

struct WelcomeView: View {
    @ObservedObject var coordinator: AppCoordinator
    
    
    var body: some View {
        VStack(alignment: .leading) {
            Image(systemName: "mappin.and.ellipse")
                .resizable()
                .scaledToFit()
                .frame(width: 48)
                .foregroundStyle(Color.greenLight)
           
                Text("Boas Vindas ao Nearby!")
                    .padding(.top, 16)
                    .padding(.bottom, 8)
                    .font(.customfont(.bold ,fontSize: 24))
                    .foregroundStyle(.black)
                Text("Tenha cupons de vantagem para usar em seus estabelecimentos favoritos.")
                .font(.customfont(.semibold, fontSize: 16))
                    .foregroundStyle(.gray)
            
            
            Text("Veja como funciona:")
                .font(.customfont(.medium, fontSize: 14))
                .foregroundStyle(.gray)
                .padding(.vertical, 16)
            
            VStack(spacing: 16) {
                TipsView(iconName: "pin", title: "Encontre Estabelecimentos", description: "Veja locais perto de você que são parceiros Nearby")
                TipsView(iconName: "qrcode", title: "Ative o cupom com QR Code", description: "Escaneie o código no estabelecimento para usar o benefício")
                TipsView(iconName: "ticket", title: "Garanta vantagens perto de você", description: "Ative cupons onde estiver, em diferentes tipos de estabelecimento")
            }
            Spacer()
            
            Button(action: {
                coordinator.goToHome()
            }) {
                ZStack {
                    RoundedRectangle(cornerRadius: 8)
                        .fill(Color.greenBase)
                        .frame(height: 48)

                    Text("Começar")
                        .font(.customfont(.semibold, fontSize: 16))
                        .foregroundStyle(.white)
                }
            }
            .frame(maxWidth: .infinity)
            .shadow(radius: 2)

            
        }.padding(.horizontal, 20)
    }
}

#Preview {
    WelcomeView(coordinator: AppCoordinator())
}
