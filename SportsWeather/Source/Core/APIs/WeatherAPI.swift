//
//  WeatherAPI.swift
//  SportsWeather
//
//  Created by Nelida Velazquez on 1/16/17.
//  Copyright © 2017 Tolkiana. All rights reserved.
//

import Foundation

/// This class talks to the https://www.wunderground.com API to get weather information
class WeatherAPI {

    /// Gets the current conditions for a given city.
    ///
    /// - Parameters:
    ///   - city: City from which to get the weather conditions
    ///   - completion: The callback for when the request was completed. Returns `WeatherAPIResult`
    func getCurrentConditions(forCity city: City, completion: (_ : WeatherAPIResult) -> Void) {
        
    }
}
