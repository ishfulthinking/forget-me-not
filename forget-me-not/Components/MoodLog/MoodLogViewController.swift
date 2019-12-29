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

    var contentView: MoodLogView {
        return view as! MoodLogView
    }
    
    init() {
        super.init(nibName: nil, bundle: nil)
        extendedLayoutIncludesOpaqueBars = true
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented in MoodLogViewController")
    }
    
    public override func loadView() {
        view = MoodLogView(frame: UIScreen.main.bounds)
        navigationItem.title = "Mood Log"
        navigationController?.navigationBar.prefersLargeTitles = true
    }
    
    override public func viewDidLoad() {
        super.viewDidLoad()
        print("Loaded MoodLogViewController.")
    }
}
