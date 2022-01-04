import Foundation

public protocol SuperComputer {
    func answer(question: String) async throws -> String
}
