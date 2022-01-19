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
        let sut = SignUpWebServices(urlString: "http://appsdeveloperblog.com:8080/signup-mock-service/users")
        let signFromRequestModel = SignUpFormRequestModel(firstName: "jun", lastName: "jee", email: "@test@test.com", password: "12345678")
        let expectataion = self.expectation(description: "signup webservice expectation")
        
        //act
        sut.signUp(withForm: signFromRequestModel) { (signUpResponseModel, error) in
            //assert
            //"""{"status": "ok"}"""
            XCTAssertEqual(signUpResponseModel?.status, "ok")
            expectataion.fulfill()
        }
        
        self.wait(for: [expectataion], timeout: 0.25)
        
    }

}
