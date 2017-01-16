//
//  AddMoreDataSource.swift
//  SportsWeather
//
//  Created by Nelida Velazquez on 1/16/17.
//  Copyright © 2017 Tolkiana. All rights reserved.
//

import UIKit

class AddMoreDataSource: NSObject, UITableViewDataSource {

    func numberOfSections(in tableView: UITableView) -> Int {
        return AddMoreViewControllerConstants.numberOfSections
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return AddMoreViewControllerConstants.numberOfRows
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        switch indexPath.row {
        case AddMoreViewControllerConstants.Rows.annArbor.rawValue:
            return tableView.dequeueReusableCell(withIdentifier: AddMoreViewControllerConstants.CellsIdentifiers.annArborCell)!
        case AddMoreViewControllerConstants.Rows.losAngeles.rawValue:
            return tableView.dequeueReusableCell(withIdentifier: AddMoreViewControllerConstants.CellsIdentifiers.losAngelesCell)!
        case AddMoreViewControllerConstants.Rows.seatle.rawValue:
            return tableView.dequeueReusableCell(withIdentifier: AddMoreViewControllerConstants.CellsIdentifiers.seatleCell)!
        case AddMoreViewControllerConstants.Rows.saltLakeCity.rawValue:
            return tableView.dequeueReusableCell(withIdentifier: AddMoreViewControllerConstants.CellsIdentifiers.saltLakeCell)!
        default:
            return tableView.dequeueReusableCell(withIdentifier: AddMoreViewControllerConstants.CellsIdentifiers.annArborCell)!
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
