//
//  View+Ext.swift
//  MockSpotifySwiftUI
//
//  Created by Oleksandr Isaiev on 24.06.2024.
//

import SwiftUI

extension View {

    func themeColors(isSelected: Bool) -> some View {
        self
            .background(isSelected ? .spotifyGreen : .spotifyDarkGray)
            .foregroundStyle(isSelected ? .spotifyBlack : .spotifyWhite)
    }

    func asButton(scale: CGFloat = 0.95, opacity: Double = 1, brightness: Double = 0, action: @escaping () -> Void) -> some View {

        Button {
            action()
        } label: {
            self
        }
        .buttonStyle(
            ButtonStyleViewModifier(
                scale: scale,
                opacity: opacity,
                brightness: brightness
            )
        )
    }

    @ViewBuilder
    func asbutton(_ type: ButtonType = .tap, action: @escaping () -> Void) -> some View {
        switch type {
        case .press:
            self.asButton(scale: 0.975, action: action)
        case .opacity:
            self.asButton(scale: 1, opacity: 0.85, action: action)
        case .tap:
            self.onTapGesture {
                action()
            }
        }
    }

    func asStretchyHeader(startingHeight: CGFloat) -> some View {
        modifier(StretchyHeaderViewModifier(startingHeight: startingHeight))
    }

    func readingFrame(coordinateSpace: CoordinateSpace = .global, onChange: @escaping (_ frame: CGRect) -> ()) -> some View {
        background(FrameReader(coordinateSpace: coordinateSpace, onChange: onChange))
    }
}

private struct FrameReader: View {

    let coordinateSpace: CoordinateSpace
    let onChange: (_ frame: CGRect) -> Void

    init(coordinateSpace: CoordinateSpace, onChange: @escaping (_: CGRect) -> Void) {
        self.coordinateSpace = coordinateSpace
        self.onChange = onChange
    }

    var body: some View {
        GeometryReader { geo in
            Text("")
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .onAppear {
                    onChange(geo.frame(in: coordinateSpace))
                }
                .onChange(of: geo.frame(in: coordinateSpace), perform: onChange)
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
    }
}
