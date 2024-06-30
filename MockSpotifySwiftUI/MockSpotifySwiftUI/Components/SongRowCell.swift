//
//  SongRowCell.swift
//  MockSpotifySwiftUI
//
//  Created by Oleksandr Isaiev on 30.06.2024.
//

import SwiftUI

struct SongRowCell: View {

    let imageSize: CGFloat
    let imageName: String
    let title: String
    let subtitle: String?
    let onCellPressed: (() -> Void)
    let onEllipsisPressed: (() -> Void)

    var body: some View {
        HStack(spacing: 8) {
            Image(imageName)
                .resizable()
                .scaledToFill()
                .frame(width: imageSize, height: imageSize)
            VStack(alignment: .leading, spacing: 4) {
                Text(title)
                    .font(.body)
                    .fontWeight(.medium)
                    .foregroundStyle(.spotifyWhite)
                Text(subtitle ?? "")
                    .font(.callout)
                    .foregroundStyle(.spotifyGray)

            }
            .lineLimit(2)
            .frame(maxWidth: .infinity, alignment: .leading)

            Image(systemName: "ellipsis")
                .font(.subheadline)
                .foregroundStyle(.spotifyWhite)
                .padding(16)
                .background(.black.opacity(0.001))
                .onTapGesture {
                    onEllipsisPressed()
                }
        }
    }
}

#Preview {
    ZStack {
        Color.black.ignoresSafeArea()

        VStack {
            SongRowCell(
                imageSize: 50,
                imageName: "PreviewSample8Image",
                title: "Some song name",
                subtitle: "Some artist name",
                onCellPressed: {},
                onEllipsisPressed: {}
            )
        }
    }
}
