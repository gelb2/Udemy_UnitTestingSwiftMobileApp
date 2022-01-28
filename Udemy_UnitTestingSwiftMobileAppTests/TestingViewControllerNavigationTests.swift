//
//  TestingViewControllerNavigationTests.swift
//  Udemy_UnitTestingSwiftMobileAppTests
//
//  Created by pablo.jee on 2022/01/29.
//

import XCTest
@testable import Udemy_UnitTestingSwiftMobileApp

class TestingViewControllerNavigationTests: XCTestCase {
    
    var sut: FirstViewController!
    var navigationController: UINavigationController!
    
    override func setUpWithError() throws {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        
        sut = storyboard.instantiateViewController(withIdentifier: "FirstViewController") as? FirstViewController
        
        sut.loadViewIfNeeded()
        navigationController = UINavigationController(rootViewController: sut)
    }
    
    override func tearDownWithError() throws {
        sut = nil
        navigationController = nil
    }
    
    func testNextButton_WhenTapped_SecondViewControllerIsPushed_NSPredicate() {
        //Arrange
        
        let myPredicate = NSPredicate { input, _ in
            return (input as? UINavigationController)?.topViewController is SecondViewController
        }
        
        expectation(for: myPredicate, evaluatedWith: navigationController)

        //Act
        sut.nextButton.sendActions(for: .touchUpInside)
        
        //Assert
        //하드웨어 성능을 타기 때문에 1초나 0.25초로 하면 실패한다
        waitForExpectations(timeout: 1.5)
    }



}
