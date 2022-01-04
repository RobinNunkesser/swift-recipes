import Foundation
import UltimateAnswerCore

public class SuperComputerAdapter : SuperComputer {
    
    let deepThought = DeepThought()
    
    public init() {
        
    }
    
    public func answer(question: String) async -> Result<String, Error> {
        return await deepThought.provideAnswer().map{$0.description}        
    }
    
}
