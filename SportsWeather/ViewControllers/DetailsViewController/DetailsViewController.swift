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
    
    // MARK: View life cycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.setupTableView()
    }
    
    // MARK: IBActions
    
    @IBAction func close(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
    }
    
    // MARK: Private methods
    
    private func setupTableView() {
        self.tableView.dataSource = dataSource
    }
}
