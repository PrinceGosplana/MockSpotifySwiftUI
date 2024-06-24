//
//  Product.swift
//  MockSpotifySwiftUI
//
//  Created by Oleksandr Isaiev on 24.06.2024.
//

import Foundation

struct Product {
    let title: String
    let image: String
}

extension Product {
    static var mockProducts: [Product] {
        [
            .init(title: "iPhone", image: "PreviewSample1Image"),
            .init(title: "MacBook", image: "PreviewSample2Image"),
            .init(title: "MacMini", image: "PreviewSample3Image"),
            .init(title: "iWatch", image: "PreviewSample4Image"),
            .init(title: "iMac", image: "PreviewSample5Image"),
            .init(title: "MacStudio", image: "PreviewSample6Image"),
            .init(title: "Keyboard", image: "PreviewSample7Image"),
            .init(title: "Mouse", image: "PreviewSample8Image")
        ]
    }
}
