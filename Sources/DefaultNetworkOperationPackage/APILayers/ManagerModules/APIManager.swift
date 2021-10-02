//
//  APIManager.swift
//  CartCodeCase
//
//  Created by Erkut Bas on 20.10.2020.
//

import Foundation
import Network

public class APIManager: APIManagerInterface {
    
    public static let shared = APIManager()

    // Mark: - Session -
    private let session: URLSession

    // Mark: - JsonDecoder -
    private var jsonDecoder = JSONDecoder()
    
    public init() {
        let config = URLSessionConfiguration.default
        config.waitsForConnectivity = true
        config.timeoutIntervalForResource = 300
        config.requestCachePolicy = .reloadIgnoringLocalAndRemoteCacheData
        self.session = URLSession(configuration: config)
    }
    
    public func executeRequest<R>(urlRequest: URLRequest, completion: @escaping (Result<R, ErrorResponse>) -> Void) where R : Codable {
        
        session.dataTask(with: urlRequest) { [weak self](data, urlResponse, error) in
            self?.dataTaskHandler(data, urlResponse, error, completion: completion)
        }.resume()
        
    }
    
    private func dataTaskHandler<R: Codable>(_ data: Data?, _ response: URLResponse?, _ error: Error?, completion: @escaping (Result<R, ErrorResponse>) -> Void) {
        
        if error != nil {
            // completion failure
            print("makasi : \(String(describing: error))")
        }
        
        if let data = data {
            
            do {
                print(String(data: data, encoding: .utf8)!)
                let dataDecoded = try jsonDecoder.decode(R.self, from: data)
                print("data : \(data)")
                completion(.success(dataDecoded))
            } catch let error {
                // completion failure
                print("error :\(error)")
            }
        }
        
    }
    
    deinit {
        print("DEINIT APIMANAGER")
    }
    
}
