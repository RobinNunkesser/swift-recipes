import Foundation

public protocol Post : CustomStringConvertible {
    var userID: Int {get set}
    var id: Int {get set}
    var title: String {get set}
    var body: String {get set}
}


