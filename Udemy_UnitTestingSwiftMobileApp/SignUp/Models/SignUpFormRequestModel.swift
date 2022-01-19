//
//  SignUpFormRequestModel.swift
//  Udemy_UnitTestingSwiftMobileApp
//
//  Created by pablo.jee on 2022/01/19.
//

import Foundation

struct SignUpFormRequestModel: Encodable {
    let firstName: String
    let lastName: String
    let email: String
    let password: String
    
    init(firstName: String, lastName: String, email: String, password: String) {
        self.firstName = firstName
        self.lastName = lastName
        self.email = email
        self.password = password
    }
}
