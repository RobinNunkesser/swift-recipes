import Foundation
import UltimateAnswerCore

public class SuperComputerAdapter : SuperComputer {
    
    let deepThought = DeepThought()
    
    public init() {
        
    }
    
    public func answer(question: String) async throws -> String {
        return try await deepThought.provideAnswer().description
    }
    
}
