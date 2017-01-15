//
//  ForecastTableViewCell.swift
//  SportsWeather
//
//  Created by Nelida Velazquez on 1/14/17.
//  Copyright © 2017 Tolkiana. All rights reserved.
//

import UIKit

class ForecastTableViewCell: UITableViewCell {
    @IBOutlet var title: UILabel!
    @IBOutlet var scrollView: UIScrollView!
    
    func configure(withForecastGroup forecastGroup: ForecastGroupViewModel) {
        self.clearForecasts()
        self.title.text = forecastGroup.title
        for forecast in forecastGroup.forecasts {
            let forecastView = ForecastView.instance(withForecast: forecast)
            scrollView.addSubview(forecastView)
        }
    }
    
    // MARK: Private
    
    func clearForecasts() {
        for subView in self.scrollView.subviews {
            subView.removeFromSuperview()
        }
    }
}
