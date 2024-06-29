//
//  PlaylistDescriptionCell.swift
//  MockSpotifySwiftUI
//
//  Created by Oleksandr Isaiev on 29.06.2024.
//

import SwiftUI

struct PlaylistDescriptionCell: View {

    let descriptionText: String
    let userName: String
    let subheadline: String
    var onAddToPlaylistPressed: (() -> Void)?
    var onDownloadPressed: (() -> Void)?
    var onSharePressed: (() -> Void)?
    var onEllipsisPressed: (() -> Void)?
    var onShufflePressed: (() -> Void)?
    var onPlayPressed: (() -> Void)?

    var body: some View {
        VStack(alignment: .leading, spacing: 8) {
            Text(descriptionText)
                .foregroundStyle(.spotifyGray)
                .frame(maxWidth: .infinity, alignment: .leading)

            madeForYouSecton

            Text(subheadline)

            buttonsRow
        }
        .font(.callout)
        .fontWeight(.medium)
        .foregroundStyle(.spotifyLightGray)
    }

    private var madeForYouSecton: some View {
        HStack(spacing: 8) {
            Image(systemName: "applelogo")
                .font(.title3)
                .foregroundStyle(.spotifyGreen)

            Text("Made for ") +
            Text(userName)
                .bold()
                .foregroundStyle(.spotifyWhite)
        }
    }

    private var buttonsRow: some View {
        HStack(spacing: 0) {
            HStack(spacing: 0) {
                Image(systemName: "plus.circle")
                    .padding(8)
                    .background(.black.opacity(0.001))
                    .onTapGesture {

                    }
                Image(systemName: "arrow.down.circle")
                    .padding(8)
                    .background(.black.opacity(0.001))
                    .onTapGesture {

                    }
                Image(systemName: "square.and.arrow.up")
                    .padding(8)
                    .background(.black.opacity(0.001))
                    .onTapGesture {

                    }
                Image(systemName: "ellipsis")
                    .padding(8)
                    .background(.black.opacity(0.001))
                    .onTapGesture {

                    }
            }
            .offset(x: -8)
            .frame(maxWidth: .infinity, alignment: .leading)

            HStack(spacing: 8) {
                Image(systemName: "shuffle")
                    .font(.system(size: 24))
                    .background(.black.opacity(0.001))
                    .onTapGesture {

                    }

                Image(systemName: "play.circle.fill")
                    .font(.system(size: 46))
                    .background(.black.opacity(0.001))
                    .onTapGesture {

                    }
            }
            .foregroundStyle(.spotifyGreen)
        }
        .font(.title2)
    }
}

#Preview {
    ZStack {
        Color.black.ignoresSafeArea()

        PlaylistDescriptionCell(
            descriptionText: "Test description with mini-LED display goes here",
            userName: "Terry",
            subheadline: "Some headline goes here"
        )
            .padding()
    }
}
