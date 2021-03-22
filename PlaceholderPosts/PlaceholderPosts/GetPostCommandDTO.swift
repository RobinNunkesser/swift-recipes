import Foundation
import PlaceholderPostsCore

public class GetPostCommandDTO : ID {
    public var id : Int
    
    internal init(id: Int) {
        self.id = id
    }
}

