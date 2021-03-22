import Foundation

protocol JSONPlaceholderAPI {
    func readAllPosts(completion: @escaping (Result<[PostEntity], Error>) -> Void)
    func readPost(id: Int, completion: @escaping (Result<PostEntity, Error>) -> Void)
    func createPost(post: PostEntity,
                    completion: @escaping (Result<PostEntity, Error>) -> Void)
}
