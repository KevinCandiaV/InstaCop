//
//  Post.swift
//  InstaCop
//
//  Created by Kevin Candia Villagómez on 30/06/23.
//

import Foundation

struct Post: Identifiable, Hashable, Codable {
    let id: String
    let ownerUid: String
    let caption: String
    var likes: Int
    let imageUrl: String
    let timeStamp: Date
    var user: User?
}

extension Post {
    static var MOCK_POST: [Post] = [
        .init(id: NSUUID().uuidString,
              ownerUid: NSUUID().uuidString,
              caption: "Batman",
              likes: 14,
              imageUrl: "batmanPost1",
              timeStamp: Date(),
              user: User.MOCK_USERS[0]),
        
        .init(id: NSUUID().uuidString,
              ownerUid: NSUUID().uuidString,
              caption: "Venom is hungry. Time to eat",
              likes: 314,
              imageUrl: "venomPost1",
              timeStamp: Date(),
              user: User.MOCK_USERS[1]),
        
        .init(id: NSUUID().uuidString,
              ownerUid: NSUUID().uuidString,
              caption: "Iron Man",
              likes: 12,
              imageUrl: "ironManPost1",
              timeStamp: Date(),
              user: User.MOCK_USERS[2]),
        
        .init(id: NSUUID().uuidString,
              ownerUid: NSUUID().uuidString,
              caption: "Wakanda forever",
              likes: 104,
              imageUrl: "blackPantherPost1",
              timeStamp: Date(),
              user: User.MOCK_USERS[3]),
        
        .init(id: NSUUID().uuidString,
              ownerUid: NSUUID().uuidString,
              caption: "Hi New York",
              likes: 123,
              imageUrl: "spiderPost1",
              timeStamp: Date(),
              user: User.MOCK_USERS[4]),
        
        .init(id: NSUUID().uuidString,
              ownerUid: NSUUID().uuidString,
              caption: "Hi New York",
              likes: 231,
              imageUrl: "spiderPost2",
              timeStamp: Date(),
              user: User.MOCK_USERS[4]),
        
        .init(id: NSUUID().uuidString,
              ownerUid: NSUUID().uuidString,
              caption: "Hi New York",
              likes: 192,
              imageUrl: "spiderPost3",
              timeStamp: Date(),
              user: User.MOCK_USERS[4]),
        
    ]
}
