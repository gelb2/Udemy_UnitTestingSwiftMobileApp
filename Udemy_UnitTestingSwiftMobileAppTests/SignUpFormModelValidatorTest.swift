//
//  SignUpFormModelValidator.swift
//  Udemy_UnitTestingSwiftMobileAppTests
//
//  Created by pablo.jee on 2022/01/12.
//

import XCTest
@testable import Udemy_UnitTestingSwiftMobileApp

class SignUpFormModelValidatorTest: XCTestCase {
    
    var sut: SignUpFormModelValidator!

    override func setUp() {
        sut = SignUpFormModelValidator()
    }
    
    override func tearDown() {
        //Remove for making test clean, managing resource
        sut = nil
    }
    
    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }
    
    func testSignUpFormModelValidator_WhenValidFirstNameProvided_ShouldReturnTrue() {
        //Arrange
        
        //Act
        let isFirstNameValid = sut.isFirstNameValid(firstName: "junyoung")
        
        //Assert
        XCTAssertTrue(isFirstNameValid, "isFirstName must be true")
    }
    
    func testSignUpFormModelValidator_WhenTooShortFirstNameProvided_ShouldReturnFalse() {
        //Arrange
        
        //Act
        let isFirstNameValid = sut.isFirstNameValid(firstName: "S")
        
        //Assert
        XCTAssertFalse(isFirstNameValid, "name should be long enough")
    }
    
}
