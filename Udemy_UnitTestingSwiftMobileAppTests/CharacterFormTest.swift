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
    
    func testFirstNameValidation_WhenInvalidCharProvided_DoTryCatch() {
        //Arrange
        let sut = CharacterFormModelValidator()
        
        //Act
        do {
            let _ = try sut.isFirstNameValid("junYoung%^$")
            XCTFail("error is not thrown")
        } catch CharacterFormError.invalidCharacter {
            // success passing
            return
        } catch {
            XCTFail("unhandled error")
            return
        }
        
        //Assert
    }
    
    func testFirstNameValidation_WhenValidCharProvided_NoThrowsAnError() {
        //Arrange
        let sut = CharacterFormModelValidator()
        //Act
        XCTAssertNoThrow(try sut.isFirstNameValid("junYoung"), "no error founded")
        
        
        
        //Assert
    }
    
    func testFirstNameValidation_WhenValidCharProvided_DoTryCatch() {
        //Arrange
        let sut = CharacterFormModelValidator()
        //Act
        do {
            let _ = try sut.isFirstNameValid("JunYoung")
        } catch {
            XCTFail("was not supposed to throw an error when a validname was provided")
        }
        
        
        
        //Assert
    }

}
