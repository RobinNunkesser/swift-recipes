//
//  DocumentDirectoryService.swift
//  DocumentDirectoryRecipe
//
//  Created by Prof. Dr. Nunkesser, Robin on 05.05.21.
//

import Foundation

class DocumentDirectoryService {

    var documentDirectory : URL!
    
    init() throws {
        let fileManager = FileManager.default
        documentDirectory = try fileManager.url(for: .documentDirectory, in: .userDomainMask, appropriateFor:nil, create:false)        
    }
    
    func save(text: String, to file: String) {
        do {
            let fileURL = documentDirectory.appendingPathComponent(file)
            let data = Data(text.utf8)
            try data.write(to: fileURL)
        } catch {
            print(error)
        }
    }
}
