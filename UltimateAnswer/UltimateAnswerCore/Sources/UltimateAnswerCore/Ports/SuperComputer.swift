import Foundation

public protocol SuperComputer {
    func answer(question: String,
                completion: @escaping (Result<String, Error>) -> Void)
}
