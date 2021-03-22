import Foundation
import ExplicitArchitecture

public class ConcreteGetPostCommand<repoType : Repository> : GetPostCommand {
    let repository : repoType
    
    public init(repository: repoType) {
        self.repository = repository
    }

    public func execute(inDTO: ID,
                    completion: @escaping (Result<Post, Error>) -> Void) {
        repository.retrieve(id: inDTO.id as! repoType.idType,
                    completion: { completion($0 as! Result<Post,Error>) })
    }
     
}
