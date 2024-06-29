//
//  Product.swift
//  MockSpotifySwiftUI
//
//  Created by Oleksandr Isaiev on 24.06.2024.
//

import Foundation

struct Product: Identifiable {
    let id = UUID()
    let title: String
    let description: String
    let price: Int
    let discountPercentage: Double
    let rating: Double
    let stock: Int
    let brand: String
    let category: String
    let thumbnail: String
    let images: [String]
}

extension Product {
    static var mockProducts: [Product] {
        [
            .init(
                title: "iPhone",
                description: "Test iPhone",
                price: 980,
                discountPercentage: 15,
                rating: 4.5,
                stock: 50,
                brand: "Apple",
                category: "Electronic Devices",
                thumbnail: "PreviewSample1Image",
                images: ["PreviewSample1Image", "PreviewSample3Image"]
            ),
            .init(
                title: "MacBook",
                description: "Test MacBook",
                price:2000,
                discountPercentage: 10,
                rating: 4.6,
                stock: 50,
                brand: "Apple",
                category: "Electronic Devices",
                thumbnail: "PreviewSample2Image",
                images: ["PreviewSample2Image", "PreviewSample3Image"]
            ),
            .init(
                title: "MacMini",
                description: "Test MacMini",
                price: 1050,
                discountPercentage: 15,
                rating: 4.2,
                stock: 34,
                brand: "Apple",
                category: "Electronic Devices",
                thumbnail: "PreviewSample3Image",
                images: ["PreviewSample3Image", "PreviewSample4Image"]
            ),
            .init(
                title: "iWatch",
                description: "Test iWatch",
                price: 690,
                discountPercentage: 15,
                rating: 4.7,
                stock: 90,
                brand: "Apple",
                category: "Electronic Devices",
                thumbnail: "PreviewSample4Image",
                images: ["PreviewSample4Image", "PreviewSample5Image"]
            ),
            .init(
                title: "iMac",
                description: "Test iMac",
                price: 1200,
                discountPercentage: 10,
                rating: 4.1,
                stock: 24,
                brand: "Apple",
                category: "Electronic Devices",
                thumbnail: "PreviewSample5Image",
                images: ["PreviewSample5Image", "PreviewSample6Image"]
            ),
            .init(
                title: "MacStudio",
                description: "Test MacStudio",
                price: 1800,
                discountPercentage: 5,
                rating: 4.9,
                stock: 12,
                brand: "Apple",
                category: "Electronic Devices",
                thumbnail: "PreviewSample6Image",
                images: ["PreviewSample6Image", "PreviewSample7Image"]
            ),
            .init(
                title: "Keyboard",
                description: "Test Keyboard",
                price: 600,
                discountPercentage: 10,
                rating: 4.3,
                stock: 47,
                brand: "Apple",
                category: "Electronic Devices",
                thumbnail: "PreviewSample7Image",
                images: ["PreviewSample7Image", "PreviewSample8Image"]
            ),
            .init(
                title: "Magic Mouse",
                description: "Test Magic Mouse",
                price: 400,
                discountPercentage: 10,
                rating: 4.6,
                stock: 67,
                brand: "Apple",
                category: "Electronic Devices",
                thumbnail: "PreviewSample8Image",
                images: ["PreviewSample8Image", "PreviewSample8Image"]
            )
        ]
    }
}
