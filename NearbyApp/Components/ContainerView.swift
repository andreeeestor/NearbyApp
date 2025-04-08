//
//  ContainerView.swift
//  NearbyApp
//
//  Created by André Nestor on 02/04/25.
//

import SwiftUI

struct ContainerView: View {
    var body: some View {
            VStack(spacing: 12) {
                Capsule()
                    .fill(Color.gray)
                    .frame(width: 40, height: 5)
                    .padding(.top, 8)
                
                Text("Explore locais perto de você")
                    .foregroundStyle(.black)
                    .font(.customfont(.semibold, fontSize: 16))
                    .frame(maxWidth: .infinity, alignment: .leading)
                    
                Spacer()
            }
            .padding()
            .frame(maxWidth: .infinity, maxHeight: .infinity) // Altura do container
            .background(Color.gray500)
            .clipShape(RoundedCornersShape( corners: [.topLeft, .topRight], radius: 32))
            .shadow(radius: 5)
            .ignoresSafeArea()
        }
}

struct RoundedCornersShape: Shape {
    var corners: UIRectCorner
    var radius: CGFloat

    func path(in rect: CGRect) -> Path {
        let path = UIBezierPath(
            roundedRect: rect,
            byRoundingCorners: corners,
            cornerRadii: CGSize(width: radius, height: radius)
        )
        return Path(path.cgPath)
    }
}

#Preview {
    ContainerView()
}
