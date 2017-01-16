//
//  CitiesViewController.swift
//  SportsWeather
//
//  Created by Nelida Velazquez on 1/15/17.
//  Copyright © 2017 Tolkiana. All rights reserved.
//

import UIKit

class CitiesViewController: UIPageViewController, UIPageViewControllerDataSource {

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
    
    // MARK: UIPageViewControllerDataSource
    
    func presentationCount(for pageViewController: UIPageViewController) -> Int {
        return self.conditionsViewControllers.count
    }
    
    func presentationIndex(for pageViewController: UIPageViewController) -> Int {
        guard let firstViewController = viewControllers?.first,
            let firstVireControllerIndex = self.conditionsViewControllers.index(of: firstViewController) else {
                return 0
        }
        return firstVireControllerIndex
    }
    
    func pageViewController(_ pageViewController: UIPageViewController, viewControllerBefore viewController: UIViewController) -> UIViewController? {
        guard let viewControllerIndex = self.conditionsViewControllers.index(of: viewController) else {
            return nil
        }
        let previousIndex = viewControllerIndex - 1
        guard previousIndex >= 0 else {
            return nil
        }
        guard self.conditionsViewControllers.count > previousIndex else {
            return nil
        }
        return self.conditionsViewControllers[previousIndex]
    }
    
    func pageViewController(_ pageViewController: UIPageViewController, viewControllerAfter viewController: UIViewController) -> UIViewController? {
        guard let viewControllerIndex = self.conditionsViewControllers.index(of: viewController) else {
            return nil
        }
        let nextIndex = viewControllerIndex + 1
        let conditionsViewControllersCount = self.conditionsViewControllers.count
        guard conditionsViewControllersCount != nextIndex else {
            return nil
        }
        guard self.conditionsViewControllers.count > nextIndex else {
            return nil
        }
        return self.conditionsViewControllers[nextIndex]
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
