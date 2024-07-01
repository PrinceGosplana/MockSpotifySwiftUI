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
    @State private var showHeader: Bool = false

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
                    .readingFrame { frame in
                        showHeader = frame.maxY < 120
                    }

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
                            imageSize: 50,
                            imageName: product.thumbnail,
                            title: product.title,
                            subtitle: product.brand,
                            onCellPressed: {},
                            onEllipsisPressed: {}
                        )
                        .padding(.leading, 16)
                    }
                }
            }
            .scrollIndicators(.hidden)

            ZStack {
                Text(product.title)
                    .font(.headline)
                    .padding(.vertical, 20)
                    .frame(maxWidth: .infinity)
                    .background(.spotifyBlack)
                    .offset(y: showHeader ? 0 : -40)
                    .opacity(showHeader ? 1 : 0)

                Image(systemName: "chevron.left")
                    .font(.title3)
                    .padding(10)
                    .background(showHeader ? .black.opacity(0.001) : .spotifyGray.opacity(0.7))
                    .clipShape(Circle())
                    .onTapGesture {

                    }
                    .padding(.leading, 16)
                    .frame(maxWidth: .infinity, alignment: .leading)
            }
            .foregroundStyle(.spotifyWhite)
            .animation(.smooth(duration: 0.2), value: showHeader)
            .frame(maxHeight: .infinity, alignment: .top)
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
