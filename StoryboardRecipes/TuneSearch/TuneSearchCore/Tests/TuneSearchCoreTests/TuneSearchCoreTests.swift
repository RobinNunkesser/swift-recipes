import XCTest
@testable import TuneSearchCore

final class TuneSearchCoreTests: XCTestCase {
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct
        // results.
        let collections = MockSearchTracksCommand().mock
        XCTAssertEqual(collections.count, 5)
    }

    static var allTests = [
        ("testExample", testExample),
    ]
}
