//
//  NewReleaseCell.swift
//  MockSpotifySwiftUI
//
//  Created by Oleksandr Isaiev on 25.06.2024.
//

import SwiftUI

struct NewReleaseCell: View {

    let viewModel: NewReleaseCellViewModel

    var body: some View {
        VStack(spacing: 16) {
            HStack {
                Image(viewModel.imageName)
                    .resizable()
                    .scaledToFill()
                    .frame(width: 50, height: 50)
                    .clipShape(Circle())
                
                VStack(alignment: .leading, spacing: 2) {
                        Text(viewModel.headline ?? "")
                            .foregroundStyle(.spotifyLightGray)
                            .font(.callout)

                    Text(viewModel.subheadline ?? "")
                        .font(.title2)
                        .fontWeight(.medium)
                        .foregroundStyle(.spotifyWhite)
                }
            }
            .frame(maxWidth: .infinity, alignment: .leading)

            HStack {
                Image(viewModel.imageName)
                    .resizable()
                    .scaledToFill()
                    .frame(width: 140, height: 140)
                
                VStack(alignment: .leading, spacing: 32) {
                    VStack(alignment: .leading, spacing: 2) {
                        Text(viewModel.title ?? "")
                            .fontWeight(.semibold)
                            .foregroundStyle(.spotifyWhite)

                        Text(viewModel.subtitle ?? "")
                            .foregroundStyle(.spotifyLightGray)
                    }
                    .font(.callout)

                    HStack(spacing: 0) {
                        Image(systemName: "plus.circle")
                            .foregroundStyle(.spotifyLightGray)
                            .font(.title3)
                            .padding(4)
                            .onTapGesture {
                                viewModel.onAddToPlaylistPressed?()
                            }
                            .offset(x: -4)
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .background(.blue)

                        Image(systemName: "play.circle.fill")
                            .foregroundStyle(.spotifyWhite)
                            .font(.title)

                    }
                }
                .padding(.trailing, 16)
            }
            .themeColors(isSelected: false)
            .clipShape(RoundedRectangle(cornerRadius: 8))
            .onTapGesture {
                viewModel.onPlayPressed?()
            }
        }
    }
}

#Preview {
    ZStack {
        Color.spotifyBlack.ignoresSafeArea()
        NewReleaseCell(viewModel: NewReleaseCellViewModel.mockData)
            .padding()
    }
}
