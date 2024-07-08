//
//  ContentView.swift
//  MockSpotifySwiftUI
//
//  Created by Oleksandr Isaiev on 23.06.2024.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var router = Router()

    var body: some View {
        NavigationStack(path: $router.navPaths) {
            HomeView()
                .navigationDestination(for: Router.Destination.self) { destination in
                    switch destination {
                    case .recently(let product, let user):
                        PlaylistView(product: product, user: user)
                    }
                }
        }
        .environmentObject(router)
    }
}

#Preview {
    ContentView()
}
