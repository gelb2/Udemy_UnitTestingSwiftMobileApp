//
//  SignUpWebServices.swift
//  Udemy_UnitTestingSwiftMobileApp
//
//  Created by pablo.jee on 2022/01/19.
//

import Foundation

class SignUpWebServices {
    
    private var urlString: String
    
    init(urlString: String) {
        self.urlString = urlString
    }
    
    func signUp(withForm: SignUpFormRequestModel, completionHandler: @escaping (SignUpResponseModel?, SignUpErrors?) -> Void) {
        
    }
}
