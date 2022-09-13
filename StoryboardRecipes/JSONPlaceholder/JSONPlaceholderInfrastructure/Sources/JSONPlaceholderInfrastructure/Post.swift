// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let posts = try? newJSONDecoder().decode(Posts.self, from: jsonData)

import Foundation

// MARK: - Post
public struct Post: Codable {
    public let userId, id: Int
    public let title, body: String
}

typealias Posts = [Post]
