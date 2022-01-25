//
//  CharacterFormModelValidator.swift
//  Udemy_UnitTestingSwiftMobileApp
//
//  Created by pablo.jee on 2022/01/26.
//

import Foundation

class CharacterFormModelValidator {
    private let invalidCharacters = CharacterSet(charactersIn: "{}$#%*&^.,/?!@")
    
    func isFirstNameValid(_ firstName:String) throws -> Bool {
        var returnValue = true
        
        if firstName.rangeOfCharacter(from: invalidCharacters) != nil {
            throw CharacterFormError.invalidCharacter
        }
        
        if firstName.count < 2 || firstName.count > 10 {
            returnValue = false
        }
        
        return returnValue
    }
}
