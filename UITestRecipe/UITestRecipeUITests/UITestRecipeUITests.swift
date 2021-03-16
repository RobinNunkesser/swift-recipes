import XCTest

class UITestRecipeUITests: XCTestCase {

    override func setUp() {
        continueAfterFailure = false
    }

    func testAlertOpensWithCorrectText() {
        let app = XCUIApplication()
        app.launch()
        
        app.buttons["show alert"].tap()
        debugPrint(app.alerts.count)
        let expectedAlert = app.alerts["Cool title"]
        XCTAssert(expectedAlert.exists)
        let staticTexts = expectedAlert.scrollViews.otherElements.staticTexts
        XCTAssertEqual(staticTexts.element(boundBy: 0).label, "Cool title")
        XCTAssertEqual(staticTexts.element(boundBy: 1).label, "Cool alert!")
    }
    
    func testFillTextField() {
        let app = XCUIApplication()
        app.launch()
        
        let textfield1TextField = app.textFields["TextField1"]
        textfield1TextField.tap()
        textfield1TextField.typeText("Hello World!")
        XCTAssertEqual(textfield1TextField.value as! String,"Hello World!")
    }

    func testLaunchPerformance() {
        if #available(macOS 10.15, iOS 13.0, tvOS 13.0, *) {
            // This measures how long it takes to launch your application.
            measure(metrics: [XCTOSSignpostMetric.applicationLaunch]) {
                XCUIApplication().launch()
            }
        }
    }
}
