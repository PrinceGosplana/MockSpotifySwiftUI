//
//  NewReleaseModel.swift
//  MockSpotifySwiftUI
//
//  Created by Oleksandr Isaiev on 25.06.2024.
//

struct NewReleaseModel {
    let imageName: String
    let headline: String?
    let subheadline: String?
    let title: String?
    let subtitle: String?

    var onAddToPlaylistPressed: (() -> Void)? = nil
    var onPlayPressed: (() -> Void)? = nil
}

extension NewReleaseModel {
    static var mockData: NewReleaseModel {
        .init(
            imageName: "SpotlightImage",
            headline: "New release from",
            subheadline: "Some Playlist",
            title: "Some Playlist",
            subtitle: "Single - title"
        )
    }
}
