//
//  SignupFormModel.swift
//  Udemy_UnitTestingSwiftMobileApp
//
//  Created by pablo.jee on 2022/01/20.
//

import Foundation

struct SignupFormModel {
    let firstName: String
    let lastName: String
    let email: String
    let password: String
    let repeatPassword: String
    
    init(firstName: String, lastName: String, email: String, password: String, repeatPassword: String) {
        self.firstName = firstName
        self.lastName = lastName
        self.email = email
        self.password = password
        self.repeatPassword = password
    }
}
