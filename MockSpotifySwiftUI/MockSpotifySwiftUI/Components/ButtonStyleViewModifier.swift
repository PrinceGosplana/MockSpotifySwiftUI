//
//  ButtonStyleViewModifier.swift
//  MockSpotifySwiftUI
//
//  Created by Oleksandr Isaiev on 25.06.2024.
//

import SwiftUI

struct ButtonStyleViewModifier: ButtonStyle {
    let scale: CGFloat
    let opacity: Double
    let brightness: Double

    func makeBody(configuration: Configuration) -> some View {
        configuration
            .label
            .scaleEffect(configuration.isPressed ? scale : 1)
            .opacity(configuration.isPressed ? opacity : 1)
            .brightness(configuration.isPressed ? brightness : 0)
    }
}
