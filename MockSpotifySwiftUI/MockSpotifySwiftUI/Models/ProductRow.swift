//
//  ProductRow.swift
//  MockSpotifySwiftUI
//
//  Created by Oleksandr Isaiev on 25.06.2024.
//

import SwiftUI

struct ProductRow: Identifiable {
    let id = UUID()
    let title: String
    let products: [Product]
}

extension ProductRow {
    static var mockRows: [ProductRow] {
        var productRows: [ProductRow] = []

        for product in Product.mockProducts {
            let productRow = ProductRow(title: product.title, products: Product.mockProducts)
            productRows.append(productRow)
        }
        return productRows
    }
}
