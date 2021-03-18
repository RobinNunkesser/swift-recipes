import Foundation
import PlaceholderPostsCore

extension PostEntity {
    func toPost() -> Post {
        return Post(userID: self.userID,
                    id: self.id,
                    title: self.title,
                    body: self.body)
    }
}

extension Post {
    func toPostEntity() -> PostEntity {
        return PostEntity(userID: self.userID,
                    id: self.id,
                    title: self.title,
                    body: self.body)
    }
}

