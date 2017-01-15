//
//  DetailsViewController.swift
//  SportsWeather
//
//  Created by Nelida Velazquez on 1/14/17.
//  Copyright © 2017 Tolkiana. All rights reserved.
//

import UIKit

class DetailsViewController: UIViewController {
    @IBOutlet var tableView: UITableView!
    
    private var dataSource = DetailsDataSource()
    private var delegate = DetailsDelegate()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.setupTableView()
    }
    
    // MARK: Private methods
    
    private func setupTableView() {
        self.tableView.dataSource = dataSource
        self.tableView.delegate = delegate
        
        self.tableView.estimatedRowHeight = CGFloat(DetailsViewControllerConstants.estimatedRowHeight)
        self.tableView.rowHeight = UITableViewAutomaticDimension
        
        self.tableView.register(
            UINib(nibName: DetailsViewControllerConstants.NibNames.forecastTableView, bundle: nil),
            forCellReuseIdentifier: DetailsViewControllerConstants.CellIdentifiers.hourlyForecastCell)
        self.tableView.register(
            UINib(nibName: DetailsViewControllerConstants.NibNames.forecastTableView, bundle: nil),
            forCellReuseIdentifier: DetailsViewControllerConstants.CellIdentifiers.dailyForecastCell)
        self.tableView.register(
            UINib(nibName: DetailsViewControllerConstants.NibNames.mapTableView, bundle: nil),
            forCellReuseIdentifier: DetailsViewControllerConstants.CellIdentifiers.weatherMapCell)
    }
}
