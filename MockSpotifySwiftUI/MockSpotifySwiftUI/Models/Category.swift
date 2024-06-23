//
//  Category.swift
//  MockSpotifySwiftUI
//
//  Created by Oleksandr Isaiev on 23.06.2024.
//

import Foundation

enum Category: CaseIterable, Identifiable {
    case all, music, podcasts, audiobooks

    var id: Self { self }
    
    var title: String {
        switch self {
        case .all: return "All"
        case .music: return "Music"
        case .podcasts: return "Podcasts"
        case .audiobooks: return "Audiobooks"
        }
    }
}
