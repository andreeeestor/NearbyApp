//
//  Fonts.swift
//  NearbyApp
//
//  Created by André Nestor on 30/03/25.
//

import SwiftUI

enum Rubik: String {
    case regular = "Rubik-Regular"
    case medium = "Rubik-Medium"
    case semibold = "Rubik-SemiBold"
    case bold = "Rubik-Bold"
    case black = "Rubik-Black"
}

extension Font {
    static func customfont(_ font: Rubik, fontSize: CGFloat) -> Font {
        custom(font.rawValue, size: fontSize)
    }
}
