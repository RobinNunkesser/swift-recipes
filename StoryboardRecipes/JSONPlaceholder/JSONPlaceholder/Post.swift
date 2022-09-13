// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let posts = try? newJSONDecoder().decode(Posts.self, from: jsonData)

import Foundation

// MARK: - Post
struct Post: Codable {
    let userId, id: Int
    let title, body: String
}

typealias Posts = [Post]
