//
//  SignUpFlowUITest.swift
//  Udemy_UnitTestingSwiftMobileAppTests
//
//  Created by pablo.jee on 2022/02/11.
//

import XCTest

class SignUpFlowUITest: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.

        // In UI tests it is usually best to stop immediately when a failure occurs.
        continueAfterFailure = false

        // UI tests must launch the application that they test. Doing this in setup will make sure it happens for each test method.
        XCUIApplication().launch()

        // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
    }
    
    func testSignUpViewController_WhenViewLoaded_RequiredUIElementAreEnabled() throws {
        let app = XCUIApplication()
        app.launch()
        
        // TODO: make uielement to test
        
        //Get UIElement With Placeholder and title
        let firstName = app.textFields["first name:"]
        let passwordTextField = app.textFields["Password:"]
        let repeatPassword = app.secureTextFields["Repeat password:"]
        let signUpbutton = app.buttons["SignUp"]
        
        //Get UIElement With Identifier
        let lastName = app.textFields["lastNameTextFieldIdentifier"]
        
        XCTAssertTrue(firstName.isEnabled)
        XCTAssertTrue(passwordTextField.isEnabled)
        XCTAssertTrue(repeatPassword.isEnabled)
        XCTAssertTrue(signUpbutton.isEnabled)
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() throws {
        // Use recording to get started writing UI tests.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }

}
