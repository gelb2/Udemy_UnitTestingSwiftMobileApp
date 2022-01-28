//
//  LoginViewControllerTest.swift
//  Udemy_UnitTestingSwiftMobileAppTests
//
//  Created by pablo.jee on 2022/01/29.
//

import XCTest
@testable import Udemy_UnitTestingSwiftMobileApp

class LoginViewControllerTest: XCTestCase {
    var sut: LoginViewController!
    
    override func setUp() {
        super.setUp()
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        sut = storyboard.instantiateViewController(withIdentifier: "LoginViewController") as? LoginViewController
        sut.loadViewIfNeeded()
    }
    
    override func tearDown() {
        sut = nil
        super.tearDown()
    }
    
    func testEmailTextField_WhenCreated_HasEmailAddressContentTypeSet() throws {
        //Arrange
        let emailTextField = try XCTUnwrap(sut.emailTextField, "emailTextField is not connected")
        
        //Act
        let emailTextFieldContentType = emailTextField.textContentType
        
        //Assert
        XCTAssertEqual(emailTextFieldContentType, UITextContentType.emailAddress)
    }
    
}
