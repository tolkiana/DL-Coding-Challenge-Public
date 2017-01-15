//
//  ConditionsViewController.swift
//  SportsWeather
//
//  Created by Nelida Velazquez on 1/14/17.
//  Copyright © 2017 Tolkiana. All rights reserved.
//

import UIKit

class ConditionsViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    func showWeatherDetails(_ sender: UITapGestureRecognizer) {
        self.performSegue(withIdentifier: Constants.Segues.detailsTransition, sender: self)
    }
    
    // MARK: Private methods
    
    private func createTapRecognizer() {
        let tapRecognizer = UITapGestureRecognizer(target: self, action: #selector(self.showWeatherDetails(_:)))
        self.view.addGestureRecognizer(tapRecognizer)
    }
}

