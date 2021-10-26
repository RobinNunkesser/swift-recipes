//
//  PoemFileAdapter.swift
//  PoetryReader
//
//  Created by Prof. Dr. Nunkesser, Robin on 26.10.21.
//

import Foundation

class PoemFileAdapter {
    func fetch() {
        
        if let path = Bundle.main.path(forResource: "Poetry", ofType: "json") {
            do {
                let data = try Data(contentsOf: URL(fileURLWithPath: path), options: .mappedIfSafe)
                let decoder = JSONDecoder()
                let model = try decoder.decode(Poems.self, from: data)
                print(model)
            } catch {
                print("ERR")
            }
        }
    }
}
