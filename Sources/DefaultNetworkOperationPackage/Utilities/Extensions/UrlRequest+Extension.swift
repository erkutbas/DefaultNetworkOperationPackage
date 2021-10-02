//
//  File.swift
//  
//
//  Created by Erkut Bas on 1.10.2021.
//

import Foundation

extension URLRequest {
    
    public var headers: HTTPHeaders {
        get { allHTTPHeaderFields.map(HTTPHeaders.init) ?? HTTPHeaders() }
        set { allHTTPHeaderFields = newValue.dictionary }
    }
    
}
