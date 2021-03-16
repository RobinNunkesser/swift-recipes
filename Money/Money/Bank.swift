//
//  Bank.swift
//  Money
//
//  Created by Prof. Dr. Nunkesser, Robin on 01.02.20.
//  Copyright © 2020 Hochschule Hamm-Lippstadt. All rights reserved.
//

import Foundation

class Bank {
    var rates : [Pair:Int] = [:]
    
    func reduce(source: Money, to: String) -> Money? {
        return source.reduce(bank: self, to: to)
    }
    
    func addRate(from: String, to: String, rate: Int) {
        rates[Pair(from: from, to: to)] = rate
    }

    func rate(from: String, to: String) -> Int? {
        if (from == to) {
            return 1
        }
        return rates[Pair(from: from, to: to)]
    }
}
