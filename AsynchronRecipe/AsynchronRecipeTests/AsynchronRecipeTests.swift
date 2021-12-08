import XCTest
@testable import AsynchronRecipe

class AsynchronRecipeTests: XCTestCase {
    
    func testAsync() async {
        let result = await ContentView().asyncCall()
        switch result {
        case let .success(value):
            XCTAssertEqual(value, "My return value")
        case let .failure(error):
            XCTFail(error.localizedDescription)
        }
    }
}
