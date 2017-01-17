//
//  City.swift
//  SportsWeather
//
//  Created by Nelida Velazquez on 1/16/17.
//  Copyright © 2017 Tolkiana. All rights reserved.
//

import Foundation

struct City {
    var name: String
    var state: String
    var country: String
    var latitude: Float
    var longitude: Float
    
    init(name: String, state: String, country: String, latitude: Float, longitude: Float) {
        self.name = name
        self.state = state
        self.country = country
        self.latitude = latitude
        self.longitude = longitude
    }
}
