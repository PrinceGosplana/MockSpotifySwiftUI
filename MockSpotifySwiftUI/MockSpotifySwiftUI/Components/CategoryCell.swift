//
//  CategoryCell.swift
//  MockSpotifySwiftUI
//
//  Created by Oleksandr Isaiev on 23.06.2024.
//

import SwiftUI

struct CategoryCell: View {

    let title: String
    let isSelected: Bool

    var body: some View {
        Text(title)
            .font(.callout)
            .padding(.vertical, 8)
            .padding(.horizontal, 10)
            .background(isSelected ? .spotifyGreen : .spotifyDarkGray)
            .foregroundStyle(isSelected ? .spotifyBlack : .spotifyWhite)
            .clipShape(.rect(cornerRadius: 16))
    }
}

#Preview {
    ZStack {
        Color.black.ignoresSafeArea()

        VStack(spacing: 40) {
            CategoryCell(title: "All", isSelected: false)
            CategoryCell(title: "Music", isSelected: true)
        }
    }
}
