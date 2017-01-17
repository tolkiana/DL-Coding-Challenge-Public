//
//  Request.swift
//  SportsWeather
//
//  Created by Nelida Velazquez on 1/16/17.
//  Copyright © 2017 Tolkiana. All rights reserved.
//

import Foundation

/// Defines the parameters needed to create a request
protocol Request {
    /// This is the specific resource to get.
    var endpoint: String { get }
    /// HTTPMethod for the request
    var method: HTTPMethod { get }
    /// Any needed paramaters
    var parameters: [String: AnyObject]? { get}
    /// Any needed headers
    var headers: [String: String]? { get }
}
