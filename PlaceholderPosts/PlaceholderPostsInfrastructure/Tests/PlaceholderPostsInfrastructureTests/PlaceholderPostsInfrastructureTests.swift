import XCTest
@testable import PlaceholderPostsInfrastructure

final class PlaceholderPostsInfrastructureTests: XCTestCase {
    
    var api = JSONPlaceholderFoundationAPI()
    
    func testReadAllPosts() async throws {
        let response = try await api.readAllPosts()
        XCTAssertEqual(response.count, 100)
    }
    
    func testReadPost() async throws {
        let response = try await api.readPost(id: 1)
        XCTAssertEqual(response.id, 1)
        XCTAssertEqual(response.userID, 1)
        XCTAssertEqual(response.title.prefix(15), "sunt aut facere")
        XCTAssertEqual(response.body.prefix(15), "quia et suscipi")
    }
    
    func testCreatePost() async throws {
        let post = PostEntity(userID: 1, id: 2, title: "foo", body: "bar")
        let response = try await api.createPost(post: post)
        XCTAssertEqual(response.id, 101)
        XCTAssertEqual(response.userID, 1)
        XCTAssertEqual(response.title, "foo")
        XCTAssertEqual(response.body, "bar")
    }
    
    static var allTests = [
        ("testReadAllPosts", testReadAllPosts),
        ("testReadPost", testReadPost),
        ("testCreatePost", testCreatePost),
    ]
}
