import Foundation
import CommonPorts

public class ConcreteGetPostCommand<repoType : CrudRepository> : GetPostCommand {
    let repository : repoType
    
    public init(repository: repoType) {
        self.repository = repository
    }
    
    public func execute(inDTO: ID) async throws -> Post {
        return try await
        repository.retrieve(id: inDTO.id as! repoType.idType) as! Post
    }     
}
