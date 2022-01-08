import SwiftUI

@main
struct SettingsRecipeApp: App {
    
    init() {
        registerDefaultsFromSettingsBundle()
    }
    
    func registerDefaultsFromSettingsBundle()
    {
        let plists = ["Root.plist"]
        for plist in plists {
            let settingsUrl = Bundle.main.url(forResource: "Settings",
                                              withExtension: "bundle")!
                .appendingPathComponent(plist)
            let settingsPlist = NSDictionary(contentsOf:settingsUrl)!
            let prefs = settingsPlist["PreferenceSpecifiers"] as! [NSDictionary]
            
            var defaultsToRegister = Dictionary<String, Any>()
            
            for preference in prefs {
                guard let key = preference["Key"] as? String else {
                    debugPrint("Key not found for \(preference["Title"] ?? "")")
                    continue
                }
                defaultsToRegister[key] = preference["DefaultValue"]
            }
            UserDefaults.standard.register(defaults: defaultsToRegister)
        }
    }
    
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
