import Foundation

struct SectionViewModel : Identifiable {
    var id : String {
        return header
    }
    var header: String
    var footer: String?
    var items: [ItemViewModel]
}
