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
        DispatchQueue.main.asyncAfter(deadline: .now() + Constants.Animations.slideOutMoreInfoDelay) { [weak self] in
            self?.moreInfoOutAnimation()
        }
    }
    
    // MARK: Private methods
    
    private func moreInfoOutAnimation() {
        
        self.moreInfoView.slideOutAnimation(duration: Constants.Animations.slideOutMoreInfoDuration) {
            if self.moreInfoTitle.text == "Humidity" {
                self.moreInfoTitle.text = "Precipitation"
                self.moreInfoValue.text = "5%"
            } else {
                self.moreInfoTitle.text = "Humidity"
                self.moreInfoValue.text = "10%"
            }
            self.moreInfoInAnimation()
        }
    }
    
    private func moreInfoInAnimation() {
        self.moreInfoView.slideInAnimation(duration: Constants.Animations.slideInMoreInfoDuration) {
            DispatchQueue.main.asyncAfter(deadline: .now() + Constants.Animations.slideOutMoreInfoDelay) { [weak self] in
                self?.moreInfoOutAnimation()
            }
        }
    }
}
