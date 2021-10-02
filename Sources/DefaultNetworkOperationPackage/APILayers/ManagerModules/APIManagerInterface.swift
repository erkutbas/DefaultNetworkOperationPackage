//
//  APIManagerInterface.swift
//  CartCodeCase
//
//  Created by Erkut Bas on 21.10.2020.
//

import Foundation

public protocol APIManagerInterface {
    func executeRequest<R: Codable>(urlRequest: URLRequest, completion: @escaping (Result<R, ErrorResponse>) -> Void)
}
