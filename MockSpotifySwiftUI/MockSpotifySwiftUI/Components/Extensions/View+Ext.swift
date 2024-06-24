//
//  View+Ext.swift
//  MockSpotifySwiftUI
//
//  Created by Oleksandr Isaiev on 24.06.2024.
//

import SwiftUI

extension View {

    func themeColors(isSelected: Bool) -> some View {
        self
            .background(isSelected ? .spotifyGreen : .spotifyDarkGray)
            .foregroundStyle(isSelected ? .spotifyBlack : .spotifyWhite)
    }
}
