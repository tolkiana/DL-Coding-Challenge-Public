//
//  ForecastView.swift
//  SportsWeather
//
//  Created by Nelida Velazquez on 1/14/17.
//  Copyright © 2017 Tolkiana. All rights reserved.
//

import UIKit

class ForecastView: UIView {
    @IBOutlet var title: UILabel!
    @IBOutlet var icon: UIImageView!
    @IBOutlet var temperature: UILabel!
    
    class func instance(withForecast forecast: ForecastViewModel) -> ForecastView {
        let instance = UINib(nibName: "ForecastView", bundle: nil).instantiate(withOwner: nil, options: nil).first as! ForecastView
        instance.configure(withForecast: forecast)
        return instance
    }
    
    func configure(withForecast forecast: ForecastViewModel) {
        self.title.text = forecast.title
        self.temperature.text = forecast.value
        self.icon.image = forecast.icon
    }
}
