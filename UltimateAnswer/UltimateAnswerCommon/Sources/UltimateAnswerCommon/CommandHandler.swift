import Foundation

public protocol CommandHandler {
    associatedtype inDTOType
    associatedtype outDTOType

    /// Executes the UseCase.
    ///
    /// - parameter inDTO: Encapsulated inDTO parameters.
    /// - parameter completion: Closure for completion
    func execute(inDTO : inDTOType,
                 completion: @escaping (Result<outDTOType,Error>) -> Void)
}
