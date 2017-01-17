//
//  Constants.swift
//  SportsWeather
//
//  Created by Nelida Velazquez on 1/14/17.
//  Copyright © 2017 Tolkiana. All rights reserved.
//

import Foundation

struct Constants {
    
    struct Storyboard {
        static let main: String = "Main"
        
        struct ViewControllers {
            static let annArborViewController = "annArborViewController"
            static let losAngelesViewController = "losAngelesViewController"
            static let seatleViewController = "seatleViewController"
            static let saltLakeViewController = "saltLakeViewController"
        }
        
        struct Segues {
            static let detailsTransition = "detailsTransition"
        }
    }
    
    struct Images {
        static let partlyCoudly = "partly_cloudy"
        static let sunny = "sunny"
    }
    
    struct ForecastTableViewCell {
        static let leadingSpace: Float = 15
        static let viewPadding: Float = 5
        static let viewWidth: Float = 80
        static let viewHeight: Float = 100
    }
    
    struct Animations {
        static let fadeInDuration: TimeInterval = 2.0
        static let slideOutDuration: TimeInterval = 1.0
        static let slideInMoreInfoDuration: TimeInterval = 2.0
        static let slideOutMoreInfoDuration: TimeInterval = 2.0
        static let slideOutMoreInfoDelay: TimeInterval = 2.0
    }
    
    struct WeatherAPI {
        static let apiKey = "myKey"
    }
}
