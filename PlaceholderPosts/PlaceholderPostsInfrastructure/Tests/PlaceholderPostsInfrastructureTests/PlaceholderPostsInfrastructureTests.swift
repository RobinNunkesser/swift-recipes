import XCTest
@testable import PlaceholderPostsInfrastructure

final class PlaceholderPostsInfrastructureTests: XCTestCase {
    
    var api = JSONPlaceholderFoundationAPI()
    
    func testReadAllPosts() {
        let expectation = self.expectation(description: "Async complete")
        api.readAllPosts(completion:
            {
                switch $0 {
                case let .success(response):
                    XCTAssertEqual(response.count, 100)                    
                case let .failure(error):
                    XCTFail(error.localizedDescription)
                }
                expectation.fulfill()
        })
        self.waitForExpectations(timeout: 10.0, handler: nil)
    }

    func testReadPost() {
        let expectation = self.expectation(description: "Async complete")
        api.readPost(id: 1, completion:
            {
                switch $0 {
                case let .success(response):
                    XCTAssertEqual(response.id, 1)
                    XCTAssertEqual(response.userID, 1)
                    XCTAssertEqual(response.title.prefix(15), "sunt aut facere")
                    XCTAssertEqual(response.body.prefix(15), "quia et suscipi")
                case let .failure(error):
                    XCTFail(error.localizedDescription)
                }
                expectation.fulfill()
        })
        self.waitForExpectations(timeout: 10.0, handler: nil)
    }
    
    func testCreatePost() {
        let expectation = self.expectation(description: "Async complete")
        let post = Post(userID: 1, id: 2, title: "foo", body: "bar")
        api.createPost(post: post, completion:
            {
                switch $0 {
                case let .success(response):
                    XCTAssertEqual(response.id, 101)
                    XCTAssertEqual(response.userID, 1)
                    XCTAssertEqual(response.title, "foo")
                    XCTAssertEqual(response.body, "bar")
                case let .failure(error):
                    XCTFail(error.localizedDescription)
                }
                expectation.fulfill()
        })
        self.waitForExpectations(timeout: 10.0, handler: nil)

    }
    
    static var allTests = [
        ("testReadAllPosts", testReadAllPosts),
        ("testReadPost", testReadPost),
        ("testCreatePost", testCreatePost),
    ]
}
