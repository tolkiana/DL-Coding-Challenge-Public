//
//  CitiesViewController+PageViewController.swift
//  SportsWeather
//
//  Created by Nelida Velazquez on 1/16/17.
//  Copyright © 2017 Tolkiana. All rights reserved.
//

import Foundation
import UIKit

extension CitiesViewController: UIPageViewControllerDataSource {
    
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
}
