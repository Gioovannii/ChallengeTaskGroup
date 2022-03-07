//
//  decodingJson.swift
//  ChallengeTaskGroup
//
//  Created by Giovanni Gaffé on 2022/3/7.
//

import Foundation

struct Message: Decodable {
    let id: Int
    let from: String
    let message: String
}

struct User: Decodable {
    let username: String
    let favorites: Set<Int>
    let messages: [Message]
}

enum FetchResult {
    case username(String)
    case favorites(Set<Int>)
    case messages([Message])
    
}
