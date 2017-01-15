//
//  ForecastDataSource.swift
//  SportsWeather
//
//  Created by Nelida Velazquez on 1/15/17.
//  Copyright © 2017 Tolkiana. All rights reserved.
//

import Foundation

struct ForecastDataSource {
    func hourlyForecast() -> ForecastGroupViewModel {
        let hours = ["10:00","11:00","12:00", "13:00","14:00","15:00","15:00","16:00","17:00","18:00","19:00","20:00"]
        var hourlyForecast: [ForecastViewModel] = []
        var temp: Float = 50
        for hour in hours {
            hourlyForecast.append(ForecastViewModel(title: hour, iconName: Constants.Images.sunny, temperature: temp))
            temp += 1
        }
        return ForecastGroupViewModel(title: "Today", forecasts: hourlyForecast)
    }
    
    func dailyForecast() -> ForecastGroupViewModel{
        let days = ["Mon","Tue","Wed","Thu","Fri","Sat","Sun"]
        var dailyForecast: [ForecastViewModel] = []
        var temp: Float = 62
        for day in days {
            dailyForecast.append(ForecastViewModel(title: day, iconName: Constants.Images.partlyCoudly, temperature: temp))
            temp += 1
        }
        return ForecastGroupViewModel(title: "Forecast", forecasts: dailyForecast)
    }
}
