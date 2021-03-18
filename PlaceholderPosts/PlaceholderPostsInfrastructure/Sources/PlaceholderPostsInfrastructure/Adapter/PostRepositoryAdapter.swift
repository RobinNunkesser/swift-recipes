import Foundation
import ExplicitArchitecture
import PlaceholderPostsCore

public class PostRepositoryAdapter : Repository {
    public typealias idType = Int
    public typealias entityType = PostEntity
    
    var adaptee : JSONPlaceholderAPI
    
    public init(useFoundation: Bool) {
        if (useFoundation) {
            adaptee = JSONPlaceholderFoundationAPI()
        } else {
            adaptee = JSONPlaceholderAlamofireAPI()
        }
    }
    
    public func create(entity: PostEntity,
                completion: @escaping (Result<Int, Error>) -> Void) {
        adaptee.createPost(post: entity.toPost()) {
            completion($0.map{$0.id})
        }
    }
    
    public func retrieve(id: Int,
                  completion: @escaping (Result<PostEntity, Error>) -> Void) {
        adaptee.readPost(id: id) {
            completion($0.map{$0.toPostEntity()})
        }
    }
    
    public func retrieveAll(
        completion: @escaping (Result<[PostEntity], Error>) -> Void) {
        adaptee.readAllPosts() {
            completion($0.map{$0.map{$0.toPostEntity()}})
        }        
    }
    
    public func update(id: Int, entity: PostEntity,
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
