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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.setupTableView()
    }
    
    // MARK: Private methods
    
    private func setupTableView() {
        self.tableView.dataSource = dataSource
    }
}
