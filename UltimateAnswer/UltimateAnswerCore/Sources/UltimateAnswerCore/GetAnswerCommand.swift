import Foundation
import UltimateAnswerCommon

public class GetAnswerCommand { //: CommandHandler {
    //public typealias inDTOType = String
    //public typealias outDTOType = String
    
    var superComputer : SuperComputer
    
    public init(superComputer: SuperComputer) {
        self.superComputer = superComputer
    }

    public func execute(inDTO: String) async -> Result<String, Error> {
        return await superComputer.answer(question: inDTO)
    }



    /*public func execute(inDTO: String,
                        completion: @escaping (Result<String, Error>) -> Void) {
        superComputer.answer(question: inDTO, completion: completion)
    }*/

}
