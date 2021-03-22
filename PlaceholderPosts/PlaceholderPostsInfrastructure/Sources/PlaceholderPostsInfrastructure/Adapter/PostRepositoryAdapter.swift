import Foundation
import ExplicitArchitecture
import PlaceholderPostsCore

public class PostRepositoryAdapter : Repository {
    public typealias idType = Int
    public typealias entityType = Post
    
    var adaptee : JSONPlaceholderAPI
    
    public init(useFoundation: Bool) {
        if (useFoundation) {
            adaptee = JSONPlaceholderFoundationAPI()
        } else {
            adaptee = JSONPlaceholderAlamofireAPI()
        }
    }
    
    public func create(entity: Post,
                completion: @escaping (Result<Int, Error>) -> Void) {
        adaptee.createPost(post: PostEntity(userID: entity.userID,
                                            id: entity.id, title: entity.title,
                                            body: entity.body)) {
            completion($0.map{$0.id})
        }
    }
    
    public func retrieve(id: Int,
                  completion: @escaping (Result<Post, Error>) -> Void) {
        adaptee.readPost(id: id) {
            completion($0.map({post in post as Post}))
        }
    }
    
    public func retrieveAll(
        completion: @escaping (Result<[Post], Error>) -> Void) {
        adaptee.readAllPosts() {
            completion($0.map({posts in posts.map({post in post as Post})}))
        }        
    }
    
    public func update(id: Int, entity: Post,
                completion: @escaping (Result<Bool, Error>) -> Void) {
        debugPrint("Not implemented")
        abort()
    }
    
    public func delete(id: Int,
                       completion: @escaping (Result<Bool, Error>) -> Void) {
        debugPrint("Not implemented")
        abort()
    }
    
}

extension PostEntity : Post {
     public var description: String {
         return "UserId: \(userID)\nId: \(id)\nTitle: \(title)\nBody: \(body)\n"
     }
}
