//
//  NewReleaseSection.swift
//  MockSpotifySwiftUI
//
//  Created by Oleksandr Isaiev on 25.06.2024.
//

import SwiftUI

struct NewReleaseSection: View {

    let viewModel: NewReleaseCellViewModel

    var body: some View {
        NewReleaseCell(
            viewModel: NewReleaseCellViewModel(
                imageName: viewModel.imageName,
                headline: viewModel.headline,
                subheadline: viewModel.subheadline,
                title: viewModel.title,
                subtitle: viewModel.subtitle,
                onAddToPlaylistPressed: viewModel.onAddToPlaylistPressed,
                onPlayPressed: viewModel.onPlayPressed
            )
        )
    }
}

#Preview {
    NewReleaseSection(viewModel: NewReleaseCellViewModel.mockData)
}
