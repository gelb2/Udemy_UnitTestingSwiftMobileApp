//
//  ViewControllerTest.swift
//  Udemy_UnitTestingSwiftMobileAppTests
//
//  Created by pablo.jee on 2022/01/25.
//

import XCTest
@testable import Udemy_UnitTestingSwiftMobileApp

class ViewControllerTest: XCTestCase {
    var storyboard: UIStoryboard!
    var sut: ViewController!
    
    override func setUp() {
        super.setUp()
        
        storyboard = UIStoryboard(name: "Main", bundle: nil)
        sut = storyboard.instantiateViewController(withIdentifier: "ViewController") as? ViewController
        sut?.loadViewIfNeeded()
    }
    
    override func tearDown() {
        storyboard = nil
        sut = nil
        super.tearDown()
    }
    
    func testViewController_WhenCreated_HasRequiredTextFieldsEmpty() throws {
        
        let firstNameTextField = try XCTUnwrap(sut?.firstNameTextField, "first tetxfield is not connected to outlet")
        let lastNameTextField = try XCTUnwrap(sut?.lastNameTextField)
        let emailTextField = try XCTUnwrap(sut?.emailTextField)
        let passwordTextField = try XCTUnwrap(sut?.passwordTextField)
        let repeatPasswordTextField = try XCTUnwrap(sut?.repeatPasswordTextField)
        
        XCTAssertEqual(firstNameTextField.text, "")
        XCTAssertEqual(lastNameTextField.text, "")
        XCTAssertEqual(emailTextField.text, "")
        XCTAssertEqual(passwordTextField.text, "")
        XCTAssertEqual(repeatPasswordTextField.text, "")
    }

}
