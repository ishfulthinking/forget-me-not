//
//  MoodLogViewController.swift
//  forget-me-not
//
//  Created by Ishmael Perez on 11/10/19.
//  Copyright © 2019 Appollo. All rights reserved.
//

import Foundation

import UIKit

class MoodLogViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.title = "Mood Log"
        navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Dates", style: .plain, target: self, action: #selector(openCalendar))
        print("Loaded mood log view controller.")
    }

    public override func loadView() {
        view = MoodLogView(frame: UIScreen.main.bounds)
    }

    var contentView: MoodLogView {
        return view as! MoodLogView
    }

    init() {
        super.init(nibName: nil, bundle: nil)
        extendedLayoutIncludesOpaqueBars = true
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented in DashboardViewController")
    }

    @objc func openCalendar() {
        print("Tapped \"Dates\" button.")
    }
}
