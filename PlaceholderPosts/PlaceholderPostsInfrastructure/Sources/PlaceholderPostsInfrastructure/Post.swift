// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let post = try? newJSONDecoder().decode(Post.self, from: jsonData)

import Foundation

// MARK: - Post
public class Post: Codable {
    public let userID, id: Int
    public let title, body: String

    enum CodingKeys: String, CodingKey {
        case userID = "userId"
        case id, title, body
    }

    public init(userID: Int, id: Int, title: String, body: String) {
        self.userID = userID
        self.id = id
        self.title = title
        self.body = body
    }
}
