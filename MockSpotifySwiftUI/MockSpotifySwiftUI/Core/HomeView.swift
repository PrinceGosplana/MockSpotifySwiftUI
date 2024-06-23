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
                Image(.theGreatWave)
                    .frame(width: 30, height: 30)
                    .background(.spotifyWhite)
                    .clipShape(Circle())
                    .onTapGesture {

                    }
            }
        }
    }
}

#Preview {
    HomeView()
}
