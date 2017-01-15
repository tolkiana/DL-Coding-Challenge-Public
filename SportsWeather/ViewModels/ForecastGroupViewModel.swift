//
//  ForecastGroupViewModel.swift
//  SportsWeather
//
//  Created by Nelida Velazquez on 1/14/17.
//  Copyright © 2017 Tolkiana. All rights reserved.
//

import Foundation

/// Represents a group of forecasts for a city, e.g: daily, hourly
struct ForecastGroupViewModel {
    /// Title for the forecast group
    var title: String
    /// Forecast List
    var forecasts: [ForecastViewModel]
    
    
    /// Designated initializer that creates a group of forecasts
    ///
    /// - parameter title:     Title for the group
    /// - parameter forecasts: Forecast List
    ///
    /// - returns: a ForecastGroupViewModel
    init(title: String, forecasts: [ForecastViewModel]) {
        self.title = title
        self.forecasts = forecasts
    }
}
