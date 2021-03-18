import Foundation
import UltimateAnswerCore

public class SuperComputerAdapter : SuperComputer {
    
    let deepThought = DeepThought()
    
    public init() {
        
    }
    
    public func answer(question: String,
                       completion: @escaping (Result<String, Error>) -> Void) {
        deepThought.provideAnswer(completion: {
            completion($0.map{$0.description})
        })
    }
    
}
