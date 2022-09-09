//
//  SearchTermDTO.swift
//  TuneSearch
//
//  Created by Prof. Dr. Nunkesser, Robin on 15.12.20.
//  Copyright © 2020 Hochschule Hamm-Lippstadt. All rights reserved.
//

import Foundation
import TunesearchCorePorts

class SearchTermDTO : SearchTerm {
    internal init(term: String) {
        self.term = term
    }
    
    var term: String
        
}
