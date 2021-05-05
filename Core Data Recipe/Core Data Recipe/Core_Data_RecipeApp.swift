//
//  Core_Data_RecipeApp.swift
//  Core Data Recipe
//
//  Created by Prof. Dr. Nunkesser, Robin on 05.05.21.
//

import SwiftUI

@main
struct Core_Data_RecipeApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
