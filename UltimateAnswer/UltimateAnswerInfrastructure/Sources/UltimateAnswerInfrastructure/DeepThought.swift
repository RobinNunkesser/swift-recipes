import Foundation

class DeepThought {
    
    func provideAnswer(completion: @escaping (Result<Int, Error>) -> Void) {
        DispatchQueue.global(qos: .userInitiated).async {
            sleep(1)
            completion(.success(42))
        }
    }
}
