//
//  ContentView.swift
//  DocumentDirectoryRecipe
//
//  Created by Prof. Dr. Nunkesser, Robin on 05.05.21.
//

import SwiftUI

struct ContentView: View {
    @State var text = ""
    
    var body: some View {
        VStack {
            TextField("Enter text", text: $text)
        }
        Button(action: saveText) {
            Text("Save")
        }
            .padding()
    }
    
    func saveText() {
        do {
            try DocumentDirectoryService().save(text: text, to: "filename")
        } catch {
            print(error)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
