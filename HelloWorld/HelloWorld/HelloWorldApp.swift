import SwiftUI

@main
struct HelloWorldApp: App {
    @Environment(\.scenePhase) private var scenePhase
    
    init() { debugPrint("App init") }
    
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
        .onChange(of: scenePhase) {
            switch $0 {
            case .active: debugPrint("App got active.")
            case .background: debugPrint("App went to background.")
            case .inactive: debugPrint("App got inactive.")
            @unknown default: debugPrint("App made unknown phase change.")
            }
        }
    }
}
