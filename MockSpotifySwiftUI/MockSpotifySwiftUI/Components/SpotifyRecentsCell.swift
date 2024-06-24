//
//  SpotifyRecentsCell.swift
//  MockSpotifySwiftUI
//
//  Created by Oleksandr Isaiev on 24.06.2024.
//

import SwiftUI

struct SpotifyRecentsCell: View {

    let imageName: String
    let title: String

    var body: some View {
        HStack(spacing: 16) {
            Image(imageName)
                .resizable()
                .scaledToFill()
                .frame(width: 55, height: 55)

            Text(title)
                .font(.callout)
                .fontWeight(.semibold)
                .foregroundStyle(.spotifyWhite)
                .lineLimit(2)
        }
        .padding(.trailing, 8)
        .frame(maxWidth: .infinity, alignment: .leading)
        .themeColors(isSelected: false)
        .clipShape(RoundedRectangle(cornerRadius: 6))
    }
}

#Preview {
    ZStack {
        Color.black.ignoresSafeArea()

        VStack {
            HStack {
                SpotifyRecentsCell(imageName: "PreviewSample1Image", title: "Test message")
                SpotifyRecentsCell(imageName: "PreviewSample1Image", title: "Test")
            }

            HStack {
                SpotifyRecentsCell(imageName: "PreviewSample1Image", title: "Test a very long text as possible to have for this kind of cell")
                SpotifyRecentsCell(imageName: "PreviewSample1Image", title: "Test with a short message")
            }
        }
    }
}
