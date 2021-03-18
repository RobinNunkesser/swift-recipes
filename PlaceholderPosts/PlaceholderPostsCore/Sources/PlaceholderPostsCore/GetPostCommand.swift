import Foundation
import ExplicitArchitecture

public class GetPostCommand<repositoryType : Repository> : Command {
    public typealias inDTOType = GetPostCommandDTO
    public typealias outDTOType = PostEntity
    
    let repository : repositoryType
    
    public init(repository: repositoryType) {
        self.repository = repository
    }

    public func execute(inDTO: GetPostCommandDTO,
                    completion: @escaping (Result<PostEntity, Error>) -> Void) {
        repository.retrieve(id: inDTO.id as! repositoryType.idType,
                    completion: { completion($0 as! Result<PostEntity,Error>) })
    }
     
}
