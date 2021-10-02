//
//  HTTPHeader.swift
//  CartCodeCase
//
//  Created by Erkut Bas on 21.10.2020.
//

import Foundation

public struct HTTPHeader: Hashable {
    public let name: String
    public let value: String

    public init(name: String, value: String) {
        self.name = name
        self.value = value
    }
}
