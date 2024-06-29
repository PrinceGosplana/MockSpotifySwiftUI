//
//  RecentsSection.swift
//  MockSpotifySwiftUI
//
//  Created by Oleksandr Isaiev on 24.06.2024.
//

import SwiftUI

struct RecentsSection: View {

    let columnsCount: Int
    let arrayOfProducts: [Product]

    var body: some View {
        LazyVGrid(columns: Array(repeating: GridItem(.flexible()), count: columnsCount)) {
            ForEach(arrayOfProducts) { product in
                SpotifyRecentsCell(
                    imageName: product.thumbnail,
                    title: product.title
                )
                .asbutton(.press) {

                }
            }
        }
    }
}

#Preview {
    RecentsSection(columnsCount: 2, arrayOfProducts: Product.mockProducts)
}


