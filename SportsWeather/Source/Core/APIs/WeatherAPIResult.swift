//
//  WeatherAPIResult.swift
//  SportsWeather
//
//  Created by Nelida Velazquez on 1/16/17.
//  Copyright © 2017 Tolkiana. All rights reserved.
//

import Foundation

enum WeatherAPIResult {
    case success(currrentWeather: CurrentWeather)
    case failure(error: WeatherAPIError)
}
