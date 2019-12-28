//
//  DashboardViewController.swift
//  forget-me-not
//
//  Created by Ishmael Perez on 11/10/19.
//  Copyright © 2019 Appollo. All rights reserved.
//

import Foundation
import UIKit

class DashboardViewController: UIViewController {

    public override func loadView() {
        view = DashboardView(frame: UIScreen.main.bounds)
    }

    var contentView: DashboardView {
        return view as! DashboardView
    }

    init() {
        super.init(nibName: nil, bundle: nil)
        extendedLayoutIncludesOpaqueBars = true
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented in DashboardViewController")
    }

    override public func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.title = "Dashboard"
        print("Loaded DashboardViewController.")
    }
}
