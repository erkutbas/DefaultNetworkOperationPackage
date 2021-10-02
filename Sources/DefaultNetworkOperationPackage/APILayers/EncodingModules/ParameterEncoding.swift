//
//  ParameterEncoding.swift
//  CartCodeCase
//
//  Created by Erkut Bas on 20.10.2020.
//

import Foundation

public enum ParameterEncoding {
    
    case urlEncoding
    case jsonEncoding
    
    public func encode(urlRequest: inout URLRequest, parameters: Parameters?) throws {
        
        do {
            switch self {
            case .urlEncoding:
                guard let urlParameters = parameters else { return }
                try URLParameterEncoder().encode(urlRequest: &urlRequest, with: urlParameters)
                
            case .jsonEncoding:
                guard let bodyParameters = parameters else { return }
                try JSONParameterEncoder().encode(urlRequest: &urlRequest, with: bodyParameters)
                
            }
            
        } catch {
            throw error
        }
    }
}


