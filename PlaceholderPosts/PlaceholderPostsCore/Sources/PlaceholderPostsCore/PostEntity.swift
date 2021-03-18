import Foundation

public class PostEntity : CustomStringConvertible {
    public let userID, id: Int
    public let title, body: String

    public init(userID: Int, id: Int, title: String, body: String) {
        self.userID = userID
        self.id = id
        self.title = title
        self.body = body
    }
    
    public var description: String {
        return "UserId: \(userID)\nId: \(id)\nTitle: \(title)\nBody: \(body)\n"
    }
}
