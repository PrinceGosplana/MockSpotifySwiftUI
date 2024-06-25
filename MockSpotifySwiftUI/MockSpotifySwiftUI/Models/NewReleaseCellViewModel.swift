//
//  NewReleaseCellViewModel.swift
//  MockSpotifySwiftUI
//
//  Created by Oleksandr Isaiev on 25.06.2024.
//

struct NewReleaseCellViewModel {
    let imageName: String
    let headline: String?
    let subheadline: String?
    let title: String?
    let subtitle: String?

    var onAddToPlaylistPressed: (() -> Void)? = nil
    var onPlayPressed: (() -> Void)? = nil
}

extension NewReleaseCellViewModel {
    static var mockData: NewReleaseCellViewModel {
        .init(
            imageName: "SpotlightImage",
            headline: "New release from",
            subheadline: "Some Playlist",
            title: "Some Playlist",
            subtitle: "Single - title"
        )
    }
}
