//
//  WeatherAPIResult.swift
//  SportsWeather
//
//  Created by Nelida Velazquez on 1/16/17.
//  Copyright © 2017 Tolkiana. All rights reserved.
//

import Foundation

/// Defines the possible results we can get from making a request to WeatherAPI
///
/// - success: Returns the CurrentWeather
/// - failure: Returns a code error 
enum WeatherAPIResult {
    case success(currrentWeather: CurrentWeather)
    case failure(error: WeatherAPIError)
}
