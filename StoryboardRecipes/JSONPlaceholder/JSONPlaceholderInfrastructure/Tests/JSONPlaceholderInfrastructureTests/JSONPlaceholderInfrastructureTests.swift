import XCTest
@testable import JSONPlaceholderInfrastructure

final class JSONPlaceholderInfrastructureTests: XCTestCase {
    func testReadPost() throws {
        let expectation = self.expectation(description: "Async complete")
        let api = JSONPlaceholderAPI()
        api.readPost(id: 1) {
            switch $0 {
            case let .success(response):
                XCTAssertEqual(response.id, 1)
                XCTAssertEqual(response.userId, 1)
                XCTAssertEqual(response.title.prefix(15), "sunt aut facere")
                XCTAssertEqual(response.body.prefix(15), "quia et suscipi")
            case let .failure(error): XCTFail(error.localizedDescription)
            }
            expectation.fulfill()
        }
        self.waitForExpectations(timeout: 10)
    }
}

