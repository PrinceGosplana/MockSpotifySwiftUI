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
            
            HomeHeader()
        }
    }
}

#Preview {
    HomeView()
}
