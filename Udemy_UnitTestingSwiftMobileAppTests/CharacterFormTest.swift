//
//  CharacterFormTest.swift
//  Udemy_UnitTestingSwiftMobileAppTests
//
//  Created by pablo.jee on 2022/01/26.
//

import XCTest
@testable import Udemy_UnitTestingSwiftMobileApp

class CharacterFormTest: XCTestCase {

    func testFirstNameValidation_WhenInvalidCharProvided_ThrowsAnError() throws {
        //Arrange
        let sut = CharacterFormModelValidator()
        
        //Act
        XCTAssertThrowsError(try sut.isFirstNameValid("junYoung^%$"), "invalid char") { error in
            XCTAssertEqual(error as? CharacterFormError, CharacterFormError.invalidCharacter)
        }
        
        //Assert
    }

}
