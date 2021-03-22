import Foundation

class JSONPlaceholderFoundationAPI : JSONPlaceholderAPI {
    let url = URL(string: "https://jsonplaceholder.typicode.com")!
    let session = URLSession(configuration: .default)
    
    func readAllPosts(completion: @escaping (Result<[PostEntity], Error>) -> Void) {
        let task = session.dataTask(with: url.appendingPathComponent("posts")) {
            self.processResponse(data: $0, response: $1, error: $2,
                                completion: completion)
        }
        task.resume()
    }

    func readPost(id: Int,
                  completion: @escaping (Result<PostEntity, Error>) -> Void) {
        let task = session.dataTask(with: url.appendingPathComponent("posts")
            .appendingPathComponent("\(id)")) {
            self.processResponse(data: $0, response: $1, error: $2,
                                completion: completion)
        }
        task.resume()
    }

    func createPost(post: PostEntity,
                  completion: @escaping (Result<PostEntity, Error>) -> Void) {
        var urlRequest = URLRequest(url: url.appendingPathComponent("posts"))
        urlRequest.httpMethod = "POST"
        urlRequest.addValue("application/json",
                            forHTTPHeaderField: "Content-Type")
        let payload = try! JSONEncoder().encode(post)
        let task = session.uploadTask(with: urlRequest, from: payload) {
            self.processResponse(data: $0, response: $1, error: $2,
                                completion: completion)
        }
        task.resume()
    }
    
    func processResponse<Success : Decodable>(data: Data?,
                                             response: URLResponse?,
                                             error: Error?,
                    completion: @escaping (Result<Success, Error>) -> Void) {
        
        guard let data = data else {
            completion(Result.failure(error!))
            return
        }
        do {
            let decoder = JSONDecoder()
            let post = try decoder.decode(Success.self, from: data)
            completion(.success(post))
        } catch  {
            completion(.failure(error))
        }
    }

}
