import Foundation

class DeepThought {
    
    func provideAnswer() async -> Result<Int, Error> {
        sleep(1)
        return .success(42)        
    }    
}
