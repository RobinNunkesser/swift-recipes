import XCTest
@testable import AsynchronRecipe

class AsynchronRecipeTests: XCTestCase {
    
    func testAsync() {
        let expectation = self.expectation(description: "Async complete")
        
        ContentView().asyncCall(completion: {            
            switch $0 {
            case let .success(value):
                XCTAssertEqual(value, "My return value")
            case let .failure(error):
                XCTFail(error.localizedDescription)
            }
            expectation.fulfill()
        })
        
        self.waitForExpectations(timeout: 10.0, handler: nil)
    }
}
