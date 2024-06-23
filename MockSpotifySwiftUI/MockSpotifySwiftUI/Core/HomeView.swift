//
//  HomeView.swift
//  MockSpotifySwiftUI
//
//  Created by Oleksandr Isaiev on 23.06.2024.
//

import SwiftUI

struct HomeView: View {

    @State private var selectedCategory: Category? = nil

    var body: some View {
        ZStack {
            Color.spotifyBlack.ignoresSafeArea()

            HStack {
                Image(User.mockUser.image)
                    .resizable()
                    .frame(width: 30, height: 30)
                    .background(.spotifyWhite)
                    .clipShape(Circle())
                    .onTapGesture {

                    }

                ScrollView(.horizontal) {
                    HStack(spacing: 8) {
                        ForEach(Category.allCases) { category in
                            CategoryCell(
                                title: category.title,
                                isSelected: category == selectedCategory
                            )
                        }
                    }
                }
                .scrollIndicators(.hidden)
            }
        }
    }
}

#Preview {
    HomeView()
}
