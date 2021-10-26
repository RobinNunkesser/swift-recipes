//
//  Poems.swift
//  PoetryReader
//
//  Created by Prof. Dr. Nunkesser, Robin on 26.10.21.
//

import Foundation

// MARK: - Poems
struct Poems: Codable {
    let poems: [Poem]
}

// MARK: - Poem
struct Poem: Codable {
    let author: String
    let title: String?
    let poem: String
    let publicationYear: String?
}
