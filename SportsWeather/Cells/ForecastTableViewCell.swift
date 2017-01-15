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
        self.title.text = forecastGroup.title
        self.clearForecasts()
        self.createForecastViews(withForecast: forecastGroup.forecasts)
        
    }
    
    // MARK: Private
    
    private func clearForecasts() {
        for subView in self.scrollView.subviews {
            subView.removeFromSuperview()
        }
    }
    
    private func createForecastViews(withForecast forecasts: [ForecastViewModel]) {
        var xPosition: CGFloat = CGFloat(Constants.ForecastTableViewCell.leadingSpace)
        var contentSize: CGFloat = 0
        for forecast in forecasts {
            let forecastView = ForecastView.instance(withForecast: forecast)
            forecastView.frame.origin.x = xPosition
            scrollView.addSubview(forecastView)
            
            xPosition += CGFloat(Constants.ForecastTableViewCell.viewWidth + Constants.ForecastTableViewCell.viewPadding)
            contentSize += CGFloat(Constants.ForecastTableViewCell.viewWidth + Constants.ForecastTableViewCell.viewPadding)
            self.scrollView.contentSize = CGSize(width: contentSize, height: CGFloat(Constants.ForecastTableViewCell.viewHeight))
        }
    }
}
