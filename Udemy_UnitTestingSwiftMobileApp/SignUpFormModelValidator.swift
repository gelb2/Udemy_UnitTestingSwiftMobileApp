//
//  SignUpFormModelValidator.swift
//  Udemy_UnitTestingSwiftMobileApp
//
//  Created by pablo.jee on 2022/01/12.
//

import Foundation

class SignUpFormModelValidator {
    
    func isFirstNameValid(firstName: String) -> Bool {
        var returnValue = true
        
        if firstName.count < 2 {
            returnValue = false
        }
        
        return returnValue
    }
}
