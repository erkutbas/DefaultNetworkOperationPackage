//
//  ServerResponse.swift
//  CartCodeCase
//
//  Created by Erkut Bas on 20.10.2020.
//

import Foundation

public class ServerResponse: Codable, Error {
    public let returnMessage: String?
    public let returnCode: Int?

    public init(returnMessage: String? = nil, returnCode: Int? = nil) {
        self.returnMessage = returnMessage
        self.returnCode = returnCode
    }
}
