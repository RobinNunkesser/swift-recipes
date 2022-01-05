import Foundation

enum FetchError: Error {
    case statusCodeMissing
    case statusCodeNotOk
}

class JSONPlaceholderFoundationAPI {
    let url = URL(string: "https://jsonplaceholder.typicode.com")!
    let session = URLSession(configuration: .default)
        
    func readAllPosts() async throws -> [PostEntity] {
        let request = URLRequest(url: url.appendingPathComponent("posts"))
        let (data, response) = try await session.data(for: request)
        return try self.processResponse(data: data, response: response)
    }
    
    func readPost(id: Int) async throws -> PostEntity {
        let request = URLRequest(url: url.appendingPathComponent("posts")
                                    .appendingPathComponent("\(id)"))
        let (data, response) = try await session.data(for: request)
        return try self.processResponse(data: data, response: response)
    }
    
    func createPost(post: PostEntity) async throws -> PostEntity {
        var request = URLRequest(url: url.appendingPathComponent("posts"))
        request.httpMethod = "POST"
        request.addValue("application/json",
                            forHTTPHeaderField: "Content-Type")
        let payload = try! JSONEncoder().encode(post)
        let (data, response) =
        try await session.upload(for: request, from: payload)
        return try self.processResponse(data: data, response: response)
    }
    
    func processResponse<Value : Decodable>(data: Data, response: URLResponse)
    throws -> Value {
        guard let statusCode = (response as? HTTPURLResponse)?.statusCode else {
            throw FetchError.statusCodeMissing
        }
        guard statusCode >= 200 && statusCode < 300 else {
            throw FetchError.statusCodeNotOk
            
        }
        let decoder = JSONDecoder()
        return try decoder.decode(Value.self, from: data)
    }

}
