import Foundation
import ExplicitArchitecture

public class ConcreteGetPostCommand<repositoryType : Repository> : GetPostCommand {
    let repository : repositoryType
    
    public init(repository: repositoryType) {
        self.repository = repository
    }

    public func execute(inDTO: ID,
                    completion: @escaping (Result<Post, Error>) -> Void) {
        repository.retrieve(id: inDTO.id as! repositoryType.idType,
                    completion: { completion($0 as! Result<Post,Error>) })
    }
     
}
