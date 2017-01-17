//
//  AddMoreDelegate.swift
//  SportsWeather
//
//  Created by Nelida Velazquez on 1/17/17.
//  Copyright © 2017 Tolkiana. All rights reserved.
//

import UIKit

class AddMoreDelegate: NSObject, UITableViewDelegate {
    
    weak var controller: AddMoreViewController?
    
    // MARK: UITableViewDelegate
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        self.controller?.dismiss(animated: true, completion: nil)
    }
}
