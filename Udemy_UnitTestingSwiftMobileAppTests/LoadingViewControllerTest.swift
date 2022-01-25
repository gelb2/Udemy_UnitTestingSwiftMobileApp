//
//  LoadingViewControllerTest.swift
//  Udemy_UnitTestingSwiftMobileAppTests
//
//  Created by pablo.jee on 2022/01/26.
//

import XCTest
@testable import Udemy_UnitTestingSwiftMobileApp

class LoadingViewControllerTest: XCTestCase {

    override func setUpWithError() throws {
        
        
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() throws {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        // Any test you write for XCTest can be annotated as throws and async.
        // Mark your test throws to produce an unexpected failure when your test encounters an uncaught error.
        // Mark your test async to allow awaiting for asynchronous code to complete. Check the results with assertions afterwards.
    }

    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }
    
    func testStoryBoardBasedViewController() {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let sut = storyboard.instantiateViewController(withIdentifier: "LoadingViewController") as? LoadingViewController
        
        sut?.loadViewIfNeeded()
    }
    
    func testXIBBasedViewController() {
        let sut: XIBViewController = XIBViewController()
        sut.loadViewIfNeeded()
    }
    
    func testCodeBasedViewController() {
        let sut = CodeBasedViewController()
        sut.loadViewIfNeeded()
    }

}
