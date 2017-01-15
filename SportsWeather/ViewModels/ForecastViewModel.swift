//
//  ForecastViewModel.swift
//  SportsWeather
//
//  Created by Nelida Velazquez on 1/14/17.
//  Copyright © 2017 Tolkiana. All rights reserved.
//

import Foundation
import UIKit


/// Representation of a Day or Hour forecast
struct ForecastViewModel {
    
    /// Can be a day or time
    var title: String
    /// Icon associated to the forecast
    var icon: UIImage?
    /// Single emperature or combination of min and max temperatures. E.g: 75º, 50º | 55º
    var value: String
    
    
    /// Initializer for Hour forecasts where we only have the temperature for that given hour
    ///
    /// - parameter date:        Forecast Date
    /// - parameter iconName:    IconName for the associated forecast
    /// - parameter temperature: Temperature for the given hour
    ///
    /// - returns: a ForecastViewModel object.
    init(date: Date, iconName: String, temperature: Float) {
        self.title = date.hourString
        self.value = "\(temperature)º"
        self.icon =  UIImage(named: iconName)
    }
    
    
    /// Initializer for Day forecasts where we have min and max temperatures
    ///
    /// - parameter date:           Forecast Date
    /// - parameter iconName:       IconName for the associated forecast
    /// - parameter minTemperature: Minimum temperature of the day
    /// - parameter maxTemperature: Maximum temperature of the day
    ///
    /// - returns: a ForecastViewModel object.
    init(date: Date, iconName: String, minTemperature: Float, maxTemperature: Float) {
        self.title = date.dayNameString
        self.value = "\(minTemperature)º | \(maxTemperature)º"
        self.icon =  UIImage(named: iconName)
    }
}
