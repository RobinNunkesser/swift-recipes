import Foundation

public protocol SuperComputer {
    func answer(question: String) async -> Result<String, Error>
}
