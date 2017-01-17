//
//  AddMoreViewControllerConstants.swift
//  SportsWeather
//
//  Created by Nelida Velazquez on 1/15/17.
//  Copyright © 2017 Tolkiana. All rights reserved.
//

import Foundation

struct AddMoreViewControllerConstants {
    static let numberOfSections = 1
    static let numberOfRows = 4

    enum Rows: Int {
        case annArbor
        case losAngeles
        case seatle
        case saltLakeCity
        case newCity
    }
    
    struct CellsIdentifiers {
        static let annArborCell = "annArborCell"
        static let losAngelesCell = "losAngelesCell"
        static let seatleCell = "seatleCell"
        static let saltLakeCell = "saltLakeCell"
    }
}
