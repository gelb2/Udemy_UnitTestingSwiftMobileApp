//
//  Udemy_UnitTestingSwiftMobileAppTests.swift
//  Udemy_UnitTestingSwiftMobileAppTests
//
//  Created by sokol on 2022/01/10.
//

import XCTest
@testable import Udemy_UnitTestingSwiftMobileApp

class Udemy_UnitTestingSwiftMobileAppTests: XCTestCase {
    
    override class func setUp() {
        //called before first testMethod begins
    }
    
    override class func tearDown() {
        //called after all testMethod Complete
    }
    
    override func setUp() {
        //called before the invocation of each testMethod in the class
    }
    
    override func tearDown() {
        //called after the invocation of each testMethod in the class
    }
    

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
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

}
