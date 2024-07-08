//
//  Router.swift
//  MockSpotifySwiftUI
//
//  Created by Oleksandr Isaiev on 07.07.2024.
//

import SwiftUI

final class Router: ObservableObject {

    public enum Destination: Codable, Hashable {
        case recently(product: Product, user: User)
    }

    /// We can use one of the options for navPaths
//    @Published var navPaths = [Destination]()
    @Published var navPaths = NavigationPath()

    func navigate(to destination: Destination) {
        navPaths.append(destination)
    }

    func navigateBack() {
        navPaths.removeLast()
    }

    func navigateToRoot() {
        navPaths.removeLast(navPaths.count)
    }
}
