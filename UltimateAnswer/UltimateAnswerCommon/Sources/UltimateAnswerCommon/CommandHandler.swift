import Foundation

public protocol CommandHandler {
    associatedtype inDTOType
    associatedtype outDTOType

    /// Executes the UseCase.
    ///
    /// - parameter inDTO: Encapsulated inDTO parameters.
    /// - returns: Result with outDTOType or Error
    func execute(inDTO : inDTOType) async throws -> outDTOType
}
