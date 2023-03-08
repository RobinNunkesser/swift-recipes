//
//  ContentView.swift
//  PoetryReader
//
//  Created by Prof. Dr. Nunkesser, Robin on 26.10.21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Spacer()
            Text("Poetry Reader")
                .font(.title)
            Spacer()
            Button(action: {}) {
                Text("Give me some poetry")
            }
            .padding(.bottom)
            Text("I want to sleep\r\nSwat the flies\r\nSoftly, please.\r\n\r\n-- Masaoka Shiki (1867-1902)")
                .font(.body)
                .padding(.bottom)
                
                
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
