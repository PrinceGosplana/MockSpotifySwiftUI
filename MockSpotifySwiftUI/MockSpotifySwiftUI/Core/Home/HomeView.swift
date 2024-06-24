//
//  HomeView.swift
//  MockSpotifySwiftUI
//
//  Created by Oleksandr Isaiev on 23.06.2024.
//

import SwiftUI

struct HomeView: View {

    let columns = Array(repeating: GridItem(.flexible()), count: 2)

    var body: some View {
        ZStack {
            Color.spotifyBlack.ignoresSafeArea()
            
            ScrollView {
                LazyVStack(spacing: 1, pinnedViews: [.sectionHeaders]) {
                    Section {
                        LazyVGrid(columns: columns) {
                            ForEach(Array(Product.mockProducts.prefix(6))) { product in
                                SpotifyRecentsCell(imageName: product.image, title: product.title)
                            }
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
}

#Preview {
    HomeView()
}
