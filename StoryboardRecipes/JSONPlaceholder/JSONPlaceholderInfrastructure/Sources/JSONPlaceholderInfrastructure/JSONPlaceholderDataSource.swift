//
//  File.swift
//  
//
//  Created by Prof. Dr. Nunkesser, Robin on 13.09.22.
//

import Foundation

protocol JSONPlaceholderDataSource {
    func readPost(id: Int, completion: @escaping (Result<Post,Error>) -> Void)
}
