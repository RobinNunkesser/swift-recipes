import XCTest
@testable import PoetryReaderInfra

final class PoetryReaderInfraTests: XCTestCase {
    func testExample() throws {
        let expectation = self.expectation(description: "Async complete")
        PoemFileAdapter().GetAPoem() {
            switch $0 {
            case let .success(poem):
                XCTAssert(poem.starts(with: "Comme je descendais des Fleuves impassibles"))
            case let .failure(error):
                XCTFail(error.localizedDescription)
            }
            expectation.fulfill()
        }
        self.waitForExpectations(timeout: 10.0, handler: nil)
    }
}
