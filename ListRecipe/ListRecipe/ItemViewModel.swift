import Foundation

struct ItemViewModel : Identifiable {
    let id = UUID()    
    var text: String
    var detailText: String
}
