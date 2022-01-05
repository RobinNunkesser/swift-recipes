import Foundation
import CommonPorts
import PlaceholderPostsCore

public class PostRepositoryAdapter : CrudRepository {
    public typealias idType = Int
    public typealias entityType = Post
    
    var adaptee = JSONPlaceholderFoundationAPI()

    public init() {
    }
        
    public func create(entity: Post) async throws -> Int {
        let post = PostEntity(userID: entity.userID, id: entity.id,
                              title: entity.title, body: entity.body)
        let response = try await adaptee.createPost(post: post)
        return response.id
    }
            
    public func retrieve(id: Int) async throws -> Post {
        let post = try await adaptee.readPost(id: id)
        return post as Post
    }
    
    public func retrieveAll() async throws -> [Post] {
        let posts = try await adaptee.readAllPosts()
        return posts.map({$0 as Post})
    }
    
    public func update(id: Int, entity: Post) async throws -> Bool {
        debugPrint("Not implemented")
        abort()
    }
    
    public func delete(id: Int) async throws -> Bool {
        debugPrint("Not implemented")
        abort()
    }
                
}

extension PostEntity : Post {
     public var description: String {
         return "UserId: \(userID)\nId: \(id)\nTitle: \(title)\nBody: \(body)\n"
     }
}
