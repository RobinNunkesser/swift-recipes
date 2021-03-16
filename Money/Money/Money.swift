//
//  MoneySwift.swift
//  Money
//
//  Created by Prof. Dr. Nunkesser, Robin on 01.02.20.
//  Copyright © 2020 Hochschule Hamm-Lippstadt. All rights reserved.
//

import Foundation

struct Money : Equatable {
    var amount : Int
    var currency : String
    
    func reduce(bank: Bank, to: String) -> Money? {
        guard let rate = bank.rate(from: currency, to: to) else { return nil }
        return Money(amount: amount/rate, currency: to)
    }

    static func dollar(amount: Int) -> Money {
        return Money(amount: amount, currency: "USD")
    }
    
    static func franc(amount: Int) -> Money {
        return Money(amount: amount, currency: "CHF")
    }
    
    static func * (lhs: Self, rhs: Int) -> Self {
        return Money(amount: lhs.amount * rhs, currency: lhs.currency)
    }
    
    static func + (lhs: Self, rhs: Self) -> Self? {
        guard lhs.currency == rhs.currency else {
            return nil
        }
        return Money(amount: lhs.amount + rhs.amount, currency: lhs.currency)
    }
    

}
