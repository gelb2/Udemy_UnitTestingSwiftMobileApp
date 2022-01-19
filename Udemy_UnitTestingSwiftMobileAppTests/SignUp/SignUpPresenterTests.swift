//
//  SignUpPresenterTests.swift
//  Udemy_UnitTestingSwiftMobileAppTests
//
//  Created by pablo.jee on 2022/01/20.
//

import XCTest
@testable import Udemy_UnitTestingSwiftMobileApp

class SignUpPresenterTests: XCTestCase {
    
    override func setUp() {
        
    }
    
    override func tearDown() {
        
    }
    
    func testSignupPresenter_WhenInformationProvided_WillValidateEachProtperty() {
        //Arrange
        let signupFormModel = SignupFormModel(firstName: "Jun", lastName: "Jee", email: "test@test.com", password: "12345", repeatPassword: "12345")
        
        //Act
        
        //Assert
    }


}
