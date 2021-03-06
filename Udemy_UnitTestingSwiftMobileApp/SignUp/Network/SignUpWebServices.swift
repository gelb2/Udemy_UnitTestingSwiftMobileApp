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
    
    func signUp(withForm: SignUpFormRequestModel, completionHandler: @escaping (SignUpResponseModel?, SignUpError?) -> Void) {
        guard let url = URL(string: urlString) else {
            completionHandler(nil, SignUpError.invalidRequestURLString)
            return
        }
        
        var request = URLRequest(url: url)
        request.httpMethod = "POST"
        request.setValue("application/json", forHTTPHeaderField: "Content-Type")
        request.setValue("application/json", forHTTPHeaderField: "Accept")
        request.httpBody = try? JSONEncoder().encode(withForm)
        
        //we need to mock this urlsession object
        let dataTask = urlSession.dataTask(with: request) { data, response, error in
            
            if let requestError = error {
                completionHandler(nil, SignUpError.failedRequest(description: requestError.localizedDescription))
                return
            }
            
            if let data = data,
                let signResponseModel = try? JSONDecoder().decode(SignUpResponseModel.self, from: data) {
                completionHandler(signResponseModel, nil)
            } else {
                // todo: create a new unit test to handle a error
                completionHandler(nil, SignUpError.invalidResponseModel)
            }
        }
        
        dataTask.resume()
    }
}
