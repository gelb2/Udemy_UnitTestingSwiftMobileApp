//
//  SignUpWebServices.swift
//  Udemy_UnitTestingSwiftMobileApp
//
//  Created by pablo.jee on 2022/01/19.
//

import Foundation

class SignUpWebServices {
    
    private var urlSession: URLSession
    private var urlString: String
    
    init(urlString: String, urlSession: URLSession = .shared) {
        self.urlString = urlString
        self.urlSession = urlSession
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
        let dataTask = urlSession.dataTask(with: request) { data, response, error in
            //TODO: write a new uint thest to handle and error
            if let data = data,
                let signResponseModel = try? JSONDecoder().decode(SignUpResponseModel.self, from: data) {
                
            } else {
                // todo: create a new unit test to handle a error
            }
        }
        
        dataTask.resume()
    }
}
