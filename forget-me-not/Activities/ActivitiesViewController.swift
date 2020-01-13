//
//  ActivitiesViewController.swift
//  Forget-Me-Not
//
//  Created by Ish Perez on 1/5/20.
//  Copyright © 2020 Appollo. All rights reserved.
//

import UIKit

class ActivitiesViewController: UITableViewController{

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    // MARK: Table data
    let activitiesList = ["First activity", "Second activity"]
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return activitiesList.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell(style: UITableViewCell.CellStyle.default, reuseIdentifier: "cell")
        cell.textLabel?.text = activitiesList[indexPath.row]
        return cell
    }
}
