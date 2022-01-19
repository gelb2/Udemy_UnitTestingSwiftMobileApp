//
//  SignupWebServiceTests.swift
//  Udemy_UnitTestingSwiftMobileAppTests
//
//  Created by pablo.jee on 2022/01/19.
//

import XCTest
@testable import Udemy_UnitTestingSwiftMobileApp

class SignupWebServiceTests: XCTestCase {

    override func setUp() {
        
    }
    
    override func tearDown() {
        
    }
    
    func testSignUpWebService_WhenGivenSuccessfullResponse_ReturnSuccess() {
        //arrange
        let sut = SignUpWebServices()
        let signFromRequestModel = SignUpFormRequestModel(firstName: "jun", lastName: "jee", email: "@test@test.com", password: "12345678")
        
        //act
        sut.signUp(withForm: signFromRequestModel) { (signUpResponseModel, error) in
            
        }
        
        //assert
        
        
    }

}
