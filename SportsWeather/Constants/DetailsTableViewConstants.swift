//
//  WeatherDetailsTableViewConstants.swift
//  SportsWeather
//
//  Created by Nelida Velazquez on 1/14/17.
//  Copyright © 2017 Tolkiana. All rights reserved.
//

import Foundation

struct DetailsTableViewConstants {
    static let numberOfSections = 3
    static let numberOfRows = 1
    
    enum Sections: Int {
        case hourlyForecast
        case dailyForecast
        case weatherMap
    }
    
    struct CellIdentifiers {
        static let hourlyForecastCell = "hourlyForecastCell"
        static let dailyForecastCell = "dailyForecastCell"
        static let weatherMapCell = "weatherMapCell"
    }
}
