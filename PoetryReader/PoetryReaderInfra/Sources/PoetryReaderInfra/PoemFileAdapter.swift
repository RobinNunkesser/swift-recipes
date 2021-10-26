//
//  PoemFileAdapter.swift
//  PoetryReader
//
//  Created by Prof. Dr. Nunkesser, Robin on 26.10.21.
//

import Foundation
import PoetryReaderDomain

class PoemFileAdapter : ObtainPoems {
    func GetAPoem(completion: @escaping (Result<String,Error>) -> Void) {
        if let path = Bundle.module.path(forResource: "Poetry", ofType: "json") {
            do {
                let data = try Data(contentsOf: URL(fileURLWithPath: path), options: .mappedIfSafe)
                let decoder = JSONDecoder()
                let model = try decoder.decode(Poems.self, from: data)
                completion(.success(model.poems.first!.poem))
            } catch {
                completion(.failure(error))
            }
        }
    }
    
    @available(iOS 15.0.0, *)
    func GetAPoem() async -> Result<String,Error> {
        return .success("")
    }
    
}
