import SwiftUI

struct ContentView: View {
    // MARK: - Types
    enum Keys : String {
        case name = "name_preference"
        case enabled = "enabled_preference"
        case slider = "slider_preference"
    }

    // MARK: - Properties
    let userDefaults = UserDefaults.standard

    init() {
        // Reading settings
        if let name = userDefaults.string(forKey: Keys.name.rawValue) {
            debugPrint(name)
        }
        debugPrint(userDefaults.bool(forKey: Keys.enabled.rawValue))
        if let slider = userDefaults.object(forKey: Keys.slider.rawValue)
                        as? Double {
            debugPrint(slider)
        }
        
        // Writing settings
        self.userDefaults.set("Some name" ,
                              forKey: Keys.name.rawValue)
        self.userDefaults.set(false, forKey: Keys.enabled.rawValue)
        self.userDefaults.set(0.42, forKey: Keys.slider.rawValue)
        self.userDefaults.synchronize()
    }
    
    var body: some View {
        Text("Hello, world!")
            .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
