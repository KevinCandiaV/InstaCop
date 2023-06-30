//
//  User.swift
//  InstaCop
//
//  Created by Kevin Candia Villagómez on 26/06/23.
//

import Foundation

struct User: Identifiable,Hashable, Codable {
    let id: String
    var username: String
    var profileImageUrl: String?
    var fullname: String?
    var bio: String?
    let email: String
}

extension User {
    static var MOCK_USERS: [User] = [
        .init(id: NSUUID().uuidString, username: "batman", profileImageUrl: "batman-2", fullname: "Bruce Wayne", bio: "Gotham's Dark Knight" , email: "batman@gmail.com"),
        .init(id: NSUUID().uuidString, username: "venom", profileImageUrl: "venom-2", fullname: "Eddie Brock", bio: "Venom" , email: "venom@gmail.com"),
        .init(id: NSUUID().uuidString, username: "ironman", profileImageUrl: "ironman-2", fullname: "Tony Stark", bio: "Playboy & Billionarie" , email: "ironman@gmail.com"),
        .init(id: NSUUID().uuidString, username: "blackpanther", profileImageUrl: "blackpanther-2", fullname: "T'chala", bio: "King of Wakanda" , email: "blackpanther@gmail.com"),
        .init(id: NSUUID().uuidString, username: "spiderman", profileImageUrl: "profilePost2", fullname: "Peter Parker", bio: "Student | Superhero" , email: "spiderman@gmail.com")
    ]
}
