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

        view.backgroundColor = UIColor(red: 80/255, green: 100/255, blue: 110/255, alpha: 1.0)
        navigationItem.title = "Mood Log"
        print("Loaded mood log view controller.")
    }
}
