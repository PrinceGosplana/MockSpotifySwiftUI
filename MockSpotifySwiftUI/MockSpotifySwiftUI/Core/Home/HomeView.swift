//
//  HomeView.swift
//  MockSpotifySwiftUI
//
//  Created by Oleksandr Isaiev on 23.06.2024.
//

import SwiftUI

struct HomeView: View {

    var body: some View {
        ZStack {
            Color.spotifyBlack.ignoresSafeArea()

            ScrollView {
                LazyVStack(spacing: 1, pinnedViews: [.sectionHeaders]) {
                    Section {
                        RecentsSection(
                            columnsCount: 2,
                            arrayOfProducts: Array(Product.mockProducts.prefix(6))
                        )
                        .padding(.horizontal, 16)

                        NewReleaseCell(viewModel: newReleaseSection())
                            .padding(.top, 18)

                        VStack(spacing: 8) {
                            ListRows(productRows: ProductRow.mockRows)
                        }
                    } header: {
                        HomeHeader()
                    }
                }
                .padding(.top, 8)
            }
            .scrollIndicators(.hidden)
            .clipped()
        }
        .toolbar(.hidden, for: .navigationBar)
    }

    private func newReleaseSection() -> NewReleaseModel {
        NewReleaseModel(
            imageName: NewReleaseModel.mockData.imageName,
            headline: NewReleaseModel.mockData.headline,
            subheadline: NewReleaseModel.mockData.subheadline,
            title: NewReleaseModel.mockData.title,
            subtitle: NewReleaseModel.mockData.subtitle,
            onAddToPlaylistPressed: {
                onAddToPlaylistPressed()
            },
            onPlayPressed: {
                onPlayPressed()
            }
        )
    }

    private func onAddToPlaylistPressed() {
        print("onAddToPlaylistPressed")
    }

    private func onPlayPressed() {
        print("onPlayPressed")
    }

}

#Preview {
    HomeView()
}
