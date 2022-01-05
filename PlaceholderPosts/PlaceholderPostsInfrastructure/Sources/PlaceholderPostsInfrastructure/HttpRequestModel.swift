import Foundation

class HttpRequestModel : Codable {
    let origin: String
    let url: String
    let headers: [String:String]
    
    init(origin: String, url: String, headers: [String:String]) {
        self.origin = origin
        self.url = url
        self.headers = headers
    }
}
