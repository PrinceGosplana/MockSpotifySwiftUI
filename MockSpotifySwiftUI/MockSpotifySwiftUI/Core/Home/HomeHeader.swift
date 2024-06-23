//
//  HomeHeader.swift
//  MockSpotifySwiftUI
//
//  Created by Oleksandr Isaiev on 23.06.2024.
//

import SwiftUI

struct HomeHeader: View {
    
    @State private var selectedCategory: Category? = nil
    
    var body: some View {
        HStack(spacing: 0) {
            ZStack {
                Image(User.mockUser.image)
                    .resizable()
                    .frame(width: 35, height: 35)
                    .background(.spotifyWhite)
                    .clipShape(Circle())
                    .onTapGesture {

                    }
            }
            .frame(width: 35, height: 35)

            ScrollView(.horizontal) {
                HStack(spacing: 8) {
                    ForEach(Category.allCases) { category in
                        CategoryCell(
                            title: category.title,
                            isSelected: category == selectedCategory
                        )
                        .onTapGesture {
                            selectedCategory = category
                        }
                    }
                }
                .padding(.horizontal, 16)
            }
            .scrollIndicators(.hidden)
        }
    }
}

#Preview {
    HomeHeader()
}
