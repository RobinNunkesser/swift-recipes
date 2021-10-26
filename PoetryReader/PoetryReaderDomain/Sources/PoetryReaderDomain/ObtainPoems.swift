//
//  ObtainPoems.swift
//  
//
//  Created by Prof. Dr. Nunkesser, Robin on 26.10.21.
//

import Foundation

public protocol ObtainPoems {
    func GetAPoem(completion: @escaping (Result<String,Error>) -> Void)
    @available(iOS 15.0.0, *)
    func GetAPoem() async -> Result<String,Error>
}
