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
                        ForEach(0..<20) { _ in
                            Rectangle()
                                .fill(Color.mint)
                                .frame(width: 20, height: 20)
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
