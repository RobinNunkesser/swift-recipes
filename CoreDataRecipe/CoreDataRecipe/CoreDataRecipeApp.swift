//
//  CoreDataRecipeApp.swift
//  CoreDataRecipe
//
//  Created by Prof. Dr. Nunkesser, Robin on 05.05.21.
//

import SwiftUI

@main
struct CoreDataRecipeApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
