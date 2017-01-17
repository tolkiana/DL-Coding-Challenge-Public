//
//  CurrentWeather.swift
//  SportsWeather
//
//  Created by Nelida Velazquez on 1/16/17.
//  Copyright © 2017 Tolkiana. All rights reserved.
//

import Foundation

struct CurrentWeather {
    var city: City
    var weather: String
    var iconName: String
    var fahrenheitTemperature: Float
    var celsiusTemperature: Float
    var precipitation: String
    var humidity: String
    
    init(
        city: City,
        weather: String,
        iconName: String,
        fahrenheitTemperature: Float,
        celsiusTemperature: Float,
        precipitation: String,
        humidity: String) {
        self.city = city
        self.weather = weather
        self.iconName = iconName
        self.fahrenheitTemperature = fahrenheitTemperature
        self.celsiusTemperature = celsiusTemperature
        self.precipitation = precipitation
        self.humidity = humidity
    }
}
