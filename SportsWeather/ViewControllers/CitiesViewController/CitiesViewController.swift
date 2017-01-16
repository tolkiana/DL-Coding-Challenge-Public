//
//  CitiesViewController.swift
//  SportsWeather
//
//  Created by Nelida Velazquez on 1/15/17.
//  Copyright © 2017 Tolkiana. All rights reserved.
//

import UIKit

class CitiesViewController: UIPageViewController {

    // MARK: View life cycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.setupPageController()
    }

    // MARK: ViewSetup
    
    func setupPageController() {
        self.dataSource = self
        guard let firstController = self.conditionsViewControllers.first else {
            return
        }
        self.setViewControllers(
            [firstController],
            direction: .forward,
            animated: true,
            completion: nil
        )
    }
    
    // MARK: Private
    
    private(set) lazy var conditionsViewControllers: [UIViewController] = {
        return [
            self.conditionViewController(withIdentifier: Constants.Storyboard.ViewControllers.annArborViewController),
            self.conditionViewController(withIdentifier: Constants.Storyboard.ViewControllers.losAngelesViewController),
            self.conditionViewController(withIdentifier: Constants.Storyboard.ViewControllers.seatleViewController),
            self.conditionViewController(withIdentifier: Constants.Storyboard.ViewControllers.saltLakeViewController)
        ]
    }()
    
    private func conditionViewController(withIdentifier identifier: String) -> UIViewController {
        return UIStoryboard(name: Constants.Storyboard.main, bundle: nil).instantiateViewController(withIdentifier: identifier)
    }

}
