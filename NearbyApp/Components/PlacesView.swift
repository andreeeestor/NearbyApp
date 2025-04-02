//
//  PlacesView.swift
//  NearbyApp
//
//  Created by André Nestor on 31/03/25.
//

import SwiftUI

struct PlacesView: View {
    let image: String
    let title: String
    let description: String
    let tickets: Int
     
    
    var body: some View {
        HStack {
            Image("eu")
                .resizable()
                .scaledToFit()
                .clipShape(RoundedRectangle(cornerRadius: 8))
                .frame(height: 120)
            VStack(alignment: .leading, spacing: 20, content: {
                Text("RocketBurguer")
                    .font(.customfont(.bold, fontSize: 18))
                Text("Na compra de um combo SuperRocket, leve outro combo")
                    .font(.customfont(.regular, fontSize: 12))
                HStack {
                    Image(systemName: "ticket")
                        .foregroundStyle(Color.redBase)
                    Text("\(tickets) cupons disponíveis")
                        .font(.customfont(.regular, fontSize: 10))
                }
            })
            .padding(.leading, 8)
            Spacer()
        }
        .padding()
        .background(Color.gray700)
        .clipShape(RoundedRectangle(cornerRadius: 24))
        .shadow(radius: 4)
    }
}

 #Preview {
     PlacesView(image: "", title: "", description: "", tickets: 3)
 }

