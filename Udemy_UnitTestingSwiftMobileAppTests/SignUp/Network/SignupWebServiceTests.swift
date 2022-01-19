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
        let config = URLSessionConfiguration.ephemeral
        config.protocolClasses = [MockURLProtocol.self]
        let urlSession = URLSession(configuration: config)
        let jsonString = """
                        {"status": "ok"}
                        """
        MockURLProtocol.stubResponseData = jsonString.data(using: .utf8)
        
        let sut = SignUpWebServices(urlString: SignUpConstants.url, urlSession: urlSession)
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
    
    //TODO: make signUPService Return failed

}
