//
//  ContentView.swift
//  BluetoothRecipe
//
//  Created by Prof. Dr. Nunkesser, Robin on 04.05.21.
//

import SwiftUI

struct ContentView: View {
    @EnvironmentObject var viewModel : ContentViewModel
            
    var body: some View {
        Text("Hello, world!")
            .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().environmentObject(ContentViewModel())
    }
}
