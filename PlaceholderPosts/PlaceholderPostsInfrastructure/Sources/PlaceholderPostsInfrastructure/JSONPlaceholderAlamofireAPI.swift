import Foundation
import Alamofire

class JSONPlaceholderAlamofireAPI : JSONPlaceholderAPI {
    let url = "https://jsonplaceholder.typicode.com"
    
    func readAllPosts(completion: @escaping (Result<[PostEntity], Error>) -> Void) {
        AF.request("\(url)/posts")
            .validate()
            .responseJSON {
                self.processResponse(response: $0, completion: completion)
        }
    }
    
    func readPost(id: Int,
                  completion: @escaping (Result<PostEntity, Error>) -> Void) {
        AF.request("\(url)/posts/\(id)")
            .validate()
            .responseJSON {
                self.processResponse(response: $0, completion: completion)
        }
    }
    
    func createPost(post: PostEntity,
                    completion: @escaping (Result<PostEntity, Error>) -> Void) {
        AF.request("\(url)/posts", method: .post, parameters: post,
                   encoder: JSONParameterEncoder.default)
                .validate()
                .responseJSON {
                    self.processResponse(response: $0, completion: completion)
            }
    }
    
    func processResponse<Success : Decodable>(response: AFDataResponse<Any>,
                    completion: @escaping (Result<Success, Error>) -> Void) {
        switch response.result {
        case .success:
            do {
                let decoder = JSONDecoder()
                let item = try decoder.decode(Success.self,
                                              from: response.data!)
                completion(.success(item))
            } catch {
                completion(.failure(error))
            }
        case .failure(let error):
            completion(.failure(error))
        }
    }
    
    
}
