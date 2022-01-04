import XCTest
@testable import AsynchronRecipe

class AsynchronRecipeTests: XCTestCase {
    
    func testAsync() async {
        let result = await ContentView().asyncCall()
        XCTAssertEqual(result, "My return value")
    }
}
