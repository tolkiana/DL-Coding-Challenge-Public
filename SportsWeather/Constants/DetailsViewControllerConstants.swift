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
        static let hourlyForecastCell = "hourlyForecastCell"
        static let dailyForecastCell = "dailyForecastCell"
        static let weatherMapCell = "weatherMapCell"
    }
    
    struct NibNames {
        static let forecastTableView = "ForecastTableViewCell"
        static let mapTableView = "MapTableViewCell"
    }
    
    struct ForecastCell {
        static let height = 145
    }
    
    struct MapCell {
        static let height = 250
    }
}
