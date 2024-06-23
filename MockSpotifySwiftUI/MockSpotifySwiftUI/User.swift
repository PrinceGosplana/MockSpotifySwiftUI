//
//  User.swift
//  MockSpotifySwiftUI
//
//  Created by Oleksandr Isaiev on 23.06.2024.
//

import Foundation


struct User {
    let id: String
    let firstName: String
    let lastName: String
    let age: Int
    let email: String
    let phone: String
    let userName: String
    let image: String
    let height: Int
    let weight: Double
}

extension User {
    static let mockUser = User(
        id: UUID().uuidString,
        firstName: "BoJack",
        lastName: "Horseman",
        age: 45,
        email: "boJack@test.com",
        phone: "1111",
        userName: "HorsingAround",
        image: "profile-picture",
        height: 180,
        weight: 82
    )
}
