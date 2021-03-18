import Foundation
import UltimateAnswerCommon

public class GetAnswerCommand : CommandHandler {
    public typealias inDTOType = GetAnswerCommandDTO
    public typealias outDTOType = String
    
    var superComputer : SuperComputer
    
    public init(superComputer: SuperComputer) {
        self.superComputer = superComputer
    }
    
    public func execute(inDTO: GetAnswerCommandDTO,
                        completion: @escaping (Result<String, Error>) -> Void) {
        superComputer.answer(question: inDTO.question, completion: completion)
    }

}
