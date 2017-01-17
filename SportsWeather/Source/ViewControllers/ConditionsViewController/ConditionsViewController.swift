//
//  ConditionsViewController.swift
//  SportsWeather
//
//  Created by Nelida Velazquez on 1/14/17.
//  Copyright © 2017 Tolkiana. All rights reserved.
//

import UIKit

class ConditionsViewController: UIViewController {
    @IBOutlet var cityName: UILabel!
    @IBOutlet var temperatureInfo: UIStackView!
    @IBOutlet var moreInfoTitle: UILabel!
    @IBOutlet var moreInfoValue: UILabel!
    @IBOutlet var moreInfoView: UIStackView!
    
    // MARK: View life cycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.startAnimations()
    }
}

