//
//  NSDate+UtilsTests.swift
//  SportsWeather
//
//  Created by Nelida Velazquez on 1/14/17.
//  Copyright © 2017 Tolkiana. All rights reserved.
//

import XCTest
@testable import SportsWeather

class NSDate_UtilsTests: XCTestCase {
    
    func testHourString() {
        let date = Date(timeIntervalSince1970: 1484449200)
        let hourString = date.hourString
        XCTAssert(hourString == "10:00 PM")
    }
    
    func testDayNameString() {
        let date = Date(timeIntervalSince1970: 1484449200)
        let dayString = date.dayNameString
        XCTAssert(dayString == "Sat")
    }
}
