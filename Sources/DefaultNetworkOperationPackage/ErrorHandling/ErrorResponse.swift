//
//  ErrorResponse.swift
//  CartCodeCase
//
//  Created by Erkut Bas on 20.10.2020.
//

import Foundation

public class ErrorResponse: Error {
    public let serverResponse: ServerResponse?
    public let apiConnectionErrorType: ApiConnectionErrorType?

    public init(serverResponse: ServerResponse? = nil, apiConnectionErrorType: ApiConnectionErrorType? = nil) {
        self.serverResponse = serverResponse
        self.apiConnectionErrorType = apiConnectionErrorType
    }

}
