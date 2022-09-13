//
//  File.swift
//  
//
//  Created by Prof. Dr. Nunkesser, Robin on 13.09.22.
//

import Foundation

enum FetchError : Error {
    case ParsingError
}

class JSONPlaceholderAPI {//} : JSONPlaceholderDataSource {
    
    let url = URL(string: "https://jsonplaceholder.typicode.com/")!
    let session = URLSession(configuration: .default)
    
    func readPost(id: Int, completion: @escaping (Result<Post,Error>) -> Void) {
        let task = session.dataTask(with: url.appendingPathComponent("posts").appendingPathComponent("\(id)")) {
            (data, response, error) in
            guard let data = data else {
                completion(.failure(error!))
                return
            }
            do {
                let decoder = JSONDecoder()
                let post = try decoder.decode(Post.self, from: data)
                completion(.success(post))
            } catch {
                completion(.failure(FetchError.ParsingError))
            }
        }
        task.resume()
    }
    
}
