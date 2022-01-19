//
//  SignUpErrors.swift
//  Udemy_UnitTestingSwiftMobileApp
//
//  Created by pablo.jee on 2022/01/19.
//

import Foundation

enum SignUpError: LocalizedError, Equatable {
    case invalidResponseModel
    case invalidRequestURLString
    case failedRequest(description: String)
    
    var errorDescription: String? {
        switch self {
        case .failedRequest(let desc):
            return desc
        case .invalidResponseModel, .invalidRequestURLString:
            return ""
        }
    }
}
