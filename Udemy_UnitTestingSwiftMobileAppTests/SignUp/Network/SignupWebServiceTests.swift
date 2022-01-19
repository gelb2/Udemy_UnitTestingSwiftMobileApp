//
//  SignupWebServiceTests.swift
//  Udemy_UnitTestingSwiftMobileAppTests
//
//  Created by pablo.jee on 2022/01/19.
//

import XCTest
@testable import Udemy_UnitTestingSwiftMobileApp

class SignupWebServiceTests: XCTestCase {
    
    var sut: SignUpWebServices!
    var signFormRequestModel: SignUpFormRequestModel!
    

    override func setUp() {
        let config = URLSessionConfiguration.ephemeral
        config.protocolClasses = [MockURLProtocol.self]
        let urlSession = URLSession(configuration: config)
        sut = SignUpWebServices(urlString: SignUpConstants.url, urlSession: urlSession)
        signFormRequestModel = SignUpFormRequestModel(firstName: "jun", lastName: "jee", email: "@test@test.com", password: "12345678")
    }
    
    override func tearDown() {
        sut = nil
        signFormRequestModel = nil
        MockURLProtocol.stubResponseData = nil
    }
    
    func testSignUpWebService_WhenGivenSuccessfullResponse_ReturnSuccess() {
        //arrange
        let jsonString = """
                        {"status": "ok"}
                        """
        MockURLProtocol.stubResponseData = jsonString.data(using: .utf8)
        
        
        
        let expectataion = self.expectation(description: "signup webservice expectation")
        
        //act
        sut.signUp(withForm: signFormRequestModel) { (signUpResponseModel, error) in
            //assert
            //"""{"status": "ok"}"""
            XCTAssertEqual(signUpResponseModel?.status, "ok")
            expectataion.fulfill()
        }
        
        self.wait(for: [expectataion], timeout: 0.25)
        
    }
    
    func testSignupWebService_WhenReceivedDifferentJSONResponse_ErrorTookPlace() {
        //arrange
        let jsonString = """
                        {"error": "internal server error"}
                        """
        MockURLProtocol.stubResponseData = jsonString.data(using: .utf8)
        

        let expectataion = self.expectation(description: "signup webservice expectation different json structure")
        
        //act
        sut.signUp(withForm: signFormRequestModel) { (signUpResponseModel, error) in
            //assert
            XCTAssertNil(signUpResponseModel, "response model error should be nil")
            XCTAssertEqual(error, SignUpErrors.responseModelParsingError)
            expectataion.fulfill()
        }
        
        self.wait(for: [expectataion], timeout: 0.25)
    }
    
    //TODO: make signUPService Return failed

}
