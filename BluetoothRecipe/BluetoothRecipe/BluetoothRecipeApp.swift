//
//  BluetoothRecipeApp.swift
//  BluetoothRecipe
//
//  Created by Prof. Dr. Nunkesser, Robin on 04.05.21.
//

import SwiftUI

@main
struct BluetoothRecipeApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView().environmentObject(ContentViewModel())
        }
    }
}
