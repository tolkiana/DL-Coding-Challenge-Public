//
//  NetworkManager.swift
//  SportsWeather
//
//  Created by Nelida Velazquez on 1/16/17.
//  Copyright © 2017 Tolkiana. All rights reserved.
//

import Foundation
import Alamofire

class NetworkManager {
    private var baseURL: String
    
    
    /// Default initializer
    ///
    /// - Parameter baseURL: URL to be used to make requests. Should not contain the endpoint.
    init(baseURL: String) {
        self.baseURL = baseURL
    }
}
