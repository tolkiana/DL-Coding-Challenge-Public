//
//  DetailsDataSource.swift
//  SportsWeather
//
//  Created by Nelida Velazquez on 1/14/17.
//  Copyright © 2017 Tolkiana. All rights reserved.
//

import UIKit

class DetailsDataSource: NSObject, UITableViewDataSource {

    func numberOfSections(in tableView: UITableView) -> Int {
        return DetailsViewControllerConstants.numberOfSections
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return DetailsViewControllerConstants.numberOfRows
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        switch indexPath.section {
        case DetailsViewControllerConstants.Sections.hourlyForecast.rawValue:
            let cell: ForecastTableViewCell = tableView.dequeueReusableCell(withIdentifier: DetailsViewControllerConstants.CellIdentifiers.hourlyForecastCell) as! ForecastTableViewCell
            return cell
        case DetailsViewControllerConstants.Sections.dailyForecast.rawValue:
            let cell: ForecastTableViewCell = tableView.dequeueReusableCell(withIdentifier: DetailsViewControllerConstants.CellIdentifiers.dailyForecastCell) as! ForecastTableViewCell
            return cell
        default:
            let cell: MapTableViewCell = tableView.dequeueReusableCell(withIdentifier: DetailsViewControllerConstants.CellIdentifiers.weatherMapCell) as! MapTableViewCell
            return cell
        }
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        switch section {
        case DetailsViewControllerConstants.Sections.hourlyForecast.rawValue:
            return NSLocalizedString("Today", comment: "Localized name for hourly forecast")
        case DetailsViewControllerConstants.Sections.dailyForecast.rawValue:
            return NSLocalizedString("Forecast", comment: "Localized name for hourly forecast")
        case DetailsViewControllerConstants.Sections.weatherMap.rawValue:
            return NSLocalizedString("Weather Map", comment: "Localized name for hourly forecast")
        default:
            return ""
        }
    }

}
