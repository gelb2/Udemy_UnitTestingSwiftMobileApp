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
        guard let url = URL(string: urlString) else {
            // TODO: create a unit test
            return
            
        }
        
        var request = URLRequest(url: url)
        request.httpMethod = "POST"
        request.setValue("application/json", forHTTPHeaderField: "Content-Type")
        request.setValue("application/json", forHTTPHeaderField: "Accept")
        
        request.httpBody = try? JSONEncoder().encode(withForm)
        
        //we need to mock this urlsession object
        let dataTask = URLSession.shared.dataTask(with: request) { data, response, error in
            <#code#>
        }
        
        dataTask.resume()
    }
}
