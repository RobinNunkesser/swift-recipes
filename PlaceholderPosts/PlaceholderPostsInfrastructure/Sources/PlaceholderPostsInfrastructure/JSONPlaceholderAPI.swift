import Foundation

protocol JSONPlaceholderAPI {
    func readAllPosts(completion: @escaping (Result<[Post], Error>) -> Void)
    func readPost(id: Int, completion: @escaping (Result<Post, Error>) -> Void)
    func createPost(post: Post,
                    completion: @escaping (Result<Post, Error>) -> Void)
}
