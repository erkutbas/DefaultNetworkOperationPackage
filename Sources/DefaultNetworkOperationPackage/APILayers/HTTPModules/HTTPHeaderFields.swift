//
//  HTTPHeaderFields.swift
//  CartCodeCase
//
//  Created by Erkut Bas on 21.10.2020.
//

import Foundation

enum HTTPHeaderFields {
    
    case contentType
    
    var value: (String, String) {
        switch self {
        case .contentType:
            return ("Content-Type", "application/json; charset=utf-8")
        }
    }

}
