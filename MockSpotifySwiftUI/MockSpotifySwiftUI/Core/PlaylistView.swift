//
//  PlaylistView.swift
//  MockSpotifySwiftUI
//
//  Created by Oleksandr Isaiev on 28.06.2024.
//

import SwiftUI

struct PlaylistView: View {

    let product: Product = .mockProducts[0]
    var user: User = .mockUser
    @State private var products: [Product] = []

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
                        userName: user.firstName,
                        subheadline: product.category,
                        onAddToPlaylistPressed: { },
                        onDownloadPressed: { },
                        onSharePressed: { },
                        onEllipsisPressed: { },
                        onShufflePressed: { },
                        onPlayPressed: { })
                    .padding(.horizontal, 16)

                    ForEach(products) { product in
                        SongRowCell(
                            imageSize: 100,
                            imageName: product.thumbnail,
                            title: product.title,
                            subtitle: product.brand,
                            onCellPressed: {},
                            onEllipsisPressed: {}
                        )
                    }
                }
            }
            .scrollIndicators(.hidden)
        }
        .task {
            await getData()
        }
        .toolbar(.hidden, for: .navigationBar)
    }

    private func getData() async {
            products = Product.mockProducts
    }
}

#Preview {
    PlaylistView()
}
