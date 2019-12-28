//
//  MedicationView.swift
//  forget-me-not
//
//  Created by Ishmael Perez on 12/9/19.
//  Copyright © 2019 Appollo. All rights reserved.
//

import Foundation
import UIKit
import SwiftUI

class MedicationView: UIView {

    override init(frame: CGRect) {
        super.init(frame: frame)
        setupViews()
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    // MARK: Components

    let tableView: UITableView = {
        let instance = UITableView()
        instance.translatesAutoresizingMaskIntoConstraints = false
        instance.register(MedicationCell.self, forCellReuseIdentifier: "cellId")
        return instance
    }()

    var exampleCell: MedicationCell = {
        let instance = MedicationCell()
        instance.configureMedicine(name: "Lamotrigine", dosage: "100mg")
        return instance
    }()

    func setupViews() {
        addSubview(tableView)
        NSLayoutConstraint.activate([
            tableView.topAnchor.constraint(equalTo: topAnchor),
            tableView.leftAnchor.constraint(equalTo: leftAnchor),
            tableView.rightAnchor.constraint(equalTo: rightAnchor),
            tableView.bottomAnchor.constraint(equalTo: bottomAnchor)
        ])

        tableView.addSubview(exampleCell)
    }
}



// MARK: MedicationCell class

class MedicationCell: UITableViewCell {

    var medicationViewController: MedicationViewController?
    var name: String?
    var dosage: String?

    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        setupViews()
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented in MedicineCell")
    }

    public func configureMedicine(name: String, dosage: String) {
        self.name  = name
        self.dosage = dosage
        medicationLabel.text = "\(name), \(dosage)"
    }

    let medicationLabel: UILabel = {
        let instance = UILabel()
        instance.backgroundColor = .white
        instance.lineBreakMode = .byTruncatingTail
        instance.translatesAutoresizingMaskIntoConstraints = false
        instance.text = "Sample"
        return instance
    }()

    let editButton: UIButton = {
        let instance = UIButton()
        instance.frame = CGRect(x: 0, y: 0, width: 30, height: 30)
        instance.layer.cornerRadius = 0.5 * instance.bounds.size.width
        instance.clipsToBounds = true
        instance.setImage(UIImage(named:"pencil.png")?.withTintColor(.white), for: .normal)
        instance.imageEdgeInsets = UIEdgeInsets(top: 8, left: 8, bottom: 8, right: 8)
        instance.backgroundColor = UIColor.Colors.fmnBlue
        instance.tintColor = .white
        instance.translatesAutoresizingMaskIntoConstraints = false
        return instance
    }()

    // MARK: Setup

    private func setupViews() {
        addSubview(medicationLabel)
        NSLayoutConstraint.activate([
            medicationLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 16),
            medicationLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: 8),
            medicationLabel.topAnchor.constraint(equalTo: topAnchor),
            medicationLabel.bottomAnchor.constraint(equalTo: bottomAnchor)
        ])

        addSubview(editButton)
        NSLayoutConstraint.activate([
            editButton.heightAnchor.constraint(equalToConstant: 30),
            editButton.widthAnchor.constraint(equalToConstant: 30),
            editButton.trailingAnchor.constraint(equalTo: trailingAnchor, constant: 8 + 60),
            editButton.topAnchor.constraint(equalTo: topAnchor, constant: 8)
        ])

        editButton.addTarget(self, action: #selector(deleteEntry), for: .touchUpInside)
    }

    @objc func deleteEntry() {
        medicationViewController?.deleteCell(cell: self)
    }
}
