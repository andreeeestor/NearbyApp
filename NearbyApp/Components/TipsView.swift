//
//  TipsView.swift
//  NearbyApp
//
//  Created by André Nestor on 30/03/25.
//

import SwiftUI

struct TipsView: View {
    let iconName: String
    let title: String
    let description: String

    var body: some View {
        HStack(spacing: 12) {
            Image(systemName: iconName)
                .resizable()
                .scaledToFit()
                .frame(width: 40, height: 40)
                .foregroundStyle(Color.redBase)
            
            VStack(alignment: .leading, spacing: 6) {
                Text(title)
                    .font(.customfont(.semibold, fontSize: 14))
                    .foregroundColor(.primary)
                
                Text(description)
                    .font(.customfont(.regular, fontSize: 14))
                    .foregroundColor(.secondary)
            }
            
            Spacer()
        }
        .padding()
        .background(Color.gray800)
        .cornerRadius(12)
        .shadow(radius: 4)
    }
}

#Preview {
    TipsView(iconName: "lightbulb.fill", title: "Dica Rápida", description: "Você pode economizar tempo usando atalhos no app!")
}
