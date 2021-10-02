//
//  ApiConnectionErrorType.swift
//  CartCodeCase
//
//  Created by Erkut Bas on 20.10.2020.
//

import Foundation

public enum ApiConnectionErrorType {
    case missingData(Int)
    case connectionError(Int)
    case serverError(Int)
    case dataDecodedFailed(String)
}
