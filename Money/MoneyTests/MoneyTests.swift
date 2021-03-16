import XCTest
@testable import Money

class MoneyTests: XCTestCase {
    
    func testDollarMultiplication() {
        let five = Money.dollar(amount: 5)
        XCTAssertEqual(Money.dollar(amount: 10), five * 2)
    }
    
    func testEquality() {
        XCTAssertEqual(Money.dollar(amount: 5), Money.dollar(amount: 5))
        XCTAssertNotEqual(Money.dollar(amount: 5), Money.dollar(amount: 6))
        XCTAssertNotEqual(Money.franc(amount: 5), Money.dollar(amount: 5))        
    }
    
    func testCurrency() {
        XCTAssertEqual("USD", Money.dollar(amount: 1).currency)
        XCTAssertEqual("CHF", Money.franc(amount: 1).currency)
    }
    
    func testReduceMoney() {
        let bank = Bank()
        let result = bank.reduce(source: Money.dollar(amount: 1), to: "USD")
        XCTAssertEqual(Money.dollar(amount: 1), result)
    }
    
    func testSimpleAddition() {
        let five = Money.dollar(amount: 5)
        let ten = five + five
        let bank = Bank()
        let result = bank.reduce(source: ten!, to: "USD")
        XCTAssertEqual(Money.dollar(amount: 10), result)
    }

    func testReduceMoneyDifferentCurrency() {
        let bank = Bank()
        bank.addRate(from: "CHF", to: "USD", rate: 2)
        let result = bank.reduce(source: Money.franc(amount: 2), to: "USD")
        XCTAssertEqual(Money.dollar(amount: 1), result)
    }

    func testIdentityRate() {
        XCTAssertEqual(1, Bank().rate(from: "USD", to: "USD"))
    }

}
