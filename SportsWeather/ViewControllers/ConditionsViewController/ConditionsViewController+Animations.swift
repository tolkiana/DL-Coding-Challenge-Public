//
//  ConditionsViewController+Animations.swift
//  SportsWeather
//
//  Created by Nelida Velazquez on 1/15/17.
//  Copyright © 2017 Tolkiana. All rights reserved.
//

import Foundation

extension ConditionsViewController {

    func startAnimations() {
        self.cityName.slideInAnimation(duration: Constants.Animations.fadeInDuration, completion: nil)
        self.temperatureInfo.fadeInAnimation(duration: Constants.Animations.fadeInDuration, completion: nil)
    }
}
