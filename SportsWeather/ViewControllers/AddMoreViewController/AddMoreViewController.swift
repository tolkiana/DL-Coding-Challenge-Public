//
//  AddMoreViewController.swift
//  SportsWeather
//
//  Created by Nelida Velazquez on 1/15/17.
//  Copyright © 2017 Tolkiana. All rights reserved.
//

import UIKit

class AddMoreViewController: UIViewController, UITableViewDataSource {

    @IBOutlet var tableView: UITableView!
    
    // MARK: IBActions
    
    @IBAction func close(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
    }

    // MARK: UITableViewDataSource
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 4
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        switch indexPath.row {
        case AddMoreViewControllerConstants.Rows.annArbor.rawValue:
            return tableView.dequeueReusableCell(withIdentifier: Constants.Storyboard.Cells.annArborCell)!
        case AddMoreViewControllerConstants.Rows.losAngeles.rawValue:
            return tableView.dequeueReusableCell(withIdentifier: Constants.Storyboard.Cells.losAngelesCell)!
        case AddMoreViewControllerConstants.Rows.seatle.rawValue:
            return tableView.dequeueReusableCell(withIdentifier: Constants.Storyboard.Cells.seatleCell)!
        case AddMoreViewControllerConstants.Rows.saltLakeCity.rawValue:
            return tableView.dequeueReusableCell(withIdentifier: Constants.Storyboard.Cells.saltLakeCell)!
        default:
            return tableView.dequeueReusableCell(withIdentifier: Constants.Storyboard.Cells.annArborCell)!
        }
    }

    func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        return true
    }
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if (editingStyle == .delete) {
            // Remove cell here,we won't do it just yet, this is just for demoing
        }
    }
}
