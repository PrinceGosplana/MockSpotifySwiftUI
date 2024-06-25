//
//  ImageTitleRowCell.swift
//  MockSpotifySwiftUI
//
//  Created by Oleksandr Isaiev on 25.06.2024.
//

import SwiftUI

struct ImageTitleRowCell: View {

    var imageSize: CGFloat = 100
    var imageName: String = "SpotlightImage"
    var title: String = "Some Item Name as big as it can be"

    var body: some View {
        VStack(alignment: .leading, spacing: 8) {
            Image(imageName)
                .resizable()
                .scaledToFill()
                .frame(width: imageSize, height: imageSize)

            Text(title)
                .font(.callout)
                .foregroundStyle(.spotifyLightGray)
                .padding(4)
        }
        .frame(width: imageSize)
    }
}

#Preview {
    ZStack {
        Color.black.ignoresSafeArea()
        ImageTitleRowCell()
    }
}
