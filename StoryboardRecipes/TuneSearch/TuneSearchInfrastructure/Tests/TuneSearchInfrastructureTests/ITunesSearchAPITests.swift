import XCTest
@testable import TuneSearchInfrastructure

class ITunesSearchAPITests : XCTestCase {
    
    func testFetch() {
        let expectation = self.expectation(description: "Async complete")
        let api = ITunesSearchAPI()
        api.fetchData(searchTerm: "Jack", completion:
            {
                switch $0 {
                case let .success(response):
                    XCTAssert(response.count>0)
                case let .failure(error):
                    XCTFail(error.localizedDescription)
                }
                expectation.fulfill()
        })
        self.waitForExpectations(timeout: 10.0, handler: nil)
    }
}
