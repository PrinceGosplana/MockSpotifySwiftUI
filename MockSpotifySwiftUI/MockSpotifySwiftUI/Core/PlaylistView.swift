//
//  PlaylistView.swift
//  MockSpotifySwiftUI
//
//  Created by Oleksandr Isaiev on 28.06.2024.
//

import SwiftUI

struct PlaylistView: View {

    let product: Product = .mockProducts[0]

    var body: some View {
        ZStack {
            Color.spotifyBlack.ignoresSafeArea()

            ScrollView(.vertical) {
                LazyVStack(spacing: 12) {
                    PlaylistHeaderCell(
                        height: 250,
                        title: product.title,
                        subtitle: product.brand,
                        imageName: product.thumbnail
                    )

                    PlaylistDescriptionCell(
                        descriptionText: product.description,
                        userName: "Terry",
                        subheadline: product.category,
                        onAddToPlaylistPressed: { },
                        onDownloadPressed: { },
                        onSharePressed: { },
                        onEllipsisPressed: { },
                        onShufflePressed: { },
                        onPlayPressed: { })
                    .padding(.horizontal, 16)
                    
                }
            }
            .scrollIndicators(.hidden)
        }
    }
}

#Preview {
    PlaylistView()
}
