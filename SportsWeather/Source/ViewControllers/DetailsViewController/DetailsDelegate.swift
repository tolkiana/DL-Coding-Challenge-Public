//
//  DetailsDelegate.swift
//  SportsWeather
//
//  Created by Nelida Velazquez on 1/14/17.
//  Copyright © 2017 Tolkiana. All rights reserved.
//

import UIKit

class DetailsDelegate: NSObject, UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        switch indexPath.section {
        case DetailsViewControllerConstants.Sections.hourlyForecast.rawValue,
             DetailsViewControllerConstants.Sections.dailyForecast.rawValue:
            return CGFloat(DetailsViewControllerConstants.ForecastCell.height)
        case DetailsViewControllerConstants.Sections.weatherMap.rawValue:
            return CGFloat(DetailsViewControllerConstants.MapCell.height)
        default:
            return 0.0
        }
    }
}
