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
        super.tearDown()
    }
    
    func testViewController_FirstNameTextField() {
        
        // TODO: asdfasdfasf
        
        // MARK: sdfsdf
        
        //Arrange
        
        
        //Act
        
        //Assert
        XCTAssertEqual(sut?.firstNameTextField.text, "")
        XCTAssertEqual(sut?.lastNameTextField.text, "")
        XCTAssertEqual(sut?.emailTextField.text, "")
        XCTAssertEqual(sut?.passwordTextField.text, "")
        XCTAssertEqual(sut?.repeatPasswordTextField.text, "")
    }

}
