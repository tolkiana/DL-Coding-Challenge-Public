//
//  DetailsViewControllerConstants.swift
//  SportsWeather
//
//  Created by Nelida Velazquez on 1/14/17.
//  Copyright © 2017 Tolkiana. All rights reserved.
//

import Foundation

struct DetailsViewControllerConstants {
    static let numberOfSections = 3
    static let numberOfRows = 1
    static let estimatedRowHeight: Float = 100
    
    enum Sections: Int {
        case hourlyForecast
        case dailyForecast
        case weatherMap
    }
    
    struct CellIdentifiers {
        static let hourlyForecastCell = "hourlyForecastCellIdentifier"
        static let dailyForecastCell = "dailyForecastCellIdentifier"
        static let weatherMapCell = "weatherMapCellIdentifier"
    }
}
