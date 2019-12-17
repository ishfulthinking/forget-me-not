//
//  MedicationViewController.swift
//  forget-me-not
//
//  Created by Ishmael Perez on 11/10/19.
//  Copyright © 2019 Appollo. All rights reserved.
//

import UIKit

class MedicationViewController: UITableViewController {

    var cells = ["Item 1"]

    public override func loadView() {
        view = MedicationView(frame: UIScreen.main.bounds)
    }

    var contentView: MedicationView {
        return view as! MedicationView
    }

    init() {
        super.init(nibName: nil, bundle: nil)
        extendedLayoutIncludesOpaqueBars = true
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented in MedicationViewController")
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Medication"
        setupTableView()
        print("Loaded medication view controller.")
    }

    func setupTableView() {
        tableView.register(MedicationCell.classForCoder(), forCellReuseIdentifier: "cellId")
        navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Add", style: .plain,  target: self, action: #selector(self.addEntry))
    }

    @objc func addEntry() {
        cells.append("Item \(cells.count + 1)")
        let insertionIndexPath = NSIndexPath(row: cells.count - 1, section: 0)
        tableView.insertRows(at: [insertionIndexPath as IndexPath], with: .automatic)
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return cells.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        print("yahoooo")
        let medicationCell = tableView.dequeueReusableCell(withIdentifier: "cellId", for: indexPath) as! MedicationCell
        medicationCell.medicationLabel.text = cells[indexPath.row]
        medicationCell.medicationViewController = self
        print("medicationcell viewcontroller is " + (medicationCell.medicationViewController == nil ? "nil!" : "not nil B)"))
        return medicationCell
    }

    func deleteCell(cell: UITableViewCell) {
        if let deletionIndexPath = tableView.indexPath(for: cell) {
            cells.remove(at: deletionIndexPath.row)
            tableView.deleteRows(at: [deletionIndexPath], with: .automatic)
        }
    }
}
