import Foundation

final class ContentViewModel : ObservableObject {
    @Published var forename = "" {
        didSet {
            greeting = "Hello \(forename)!"
        }
    }
    @Published var surname = ""
    @Published var greeting = ""

}
