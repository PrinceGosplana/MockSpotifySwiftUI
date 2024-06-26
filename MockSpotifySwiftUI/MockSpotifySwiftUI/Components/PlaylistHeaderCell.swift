//
//  PlaylistHeaderCell.swift
//  MockSpotifySwiftUI
//
//  Created by Oleksandr Isaiev on 29.06.2024.
//

import SwiftUI

struct PlaylistHeaderCell: View {
    var height: CGFloat = 300
    var title: String = "Some playlist title goes here"
    var subtitle: String = "Subtitle goes here"
    var imageName: String = "PreviewSample5Image"
    var shadowColor: Color = .spotifyBlack.opacity(0.8)

    var body: some View {
        Rectangle()
            .opacity(0)
            .overlay(
                Image(imageName)
                    .resizable()
                    .scaledToFill()
            )
            .overlay(alignment: .bottomLeading) {
                VStack(alignment: .leading, spacing: 8) {
                    Text(subtitle)
                        .font(.headline)
                    Text(title)
                        .font(.largeTitle)
                        .fontWeight(.bold)
                }
                .foregroundStyle(.spotifyWhite)
                .padding(16)
                .frame(maxWidth: .infinity, alignment: .leading)
                .background(
                    LinearGradient(colors: [shadowColor.opacity(0), shadowColor], startPoint: .top, endPoint: .bottom)
                )
            }
            .asStretchyHeader(startingHeight: height)
    }
}

#Preview {
    ZStack {
        Color.black.ignoresSafeArea()

        ScrollView {
            PlaylistHeaderCell()
        }
        .ignoresSafeArea()
    }
}
