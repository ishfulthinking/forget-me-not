//
//  DisplayActivityViewController.swift
//  Forget-Me-Not
//
//  Created by Ishmael Perez on 1/10/20.
//  Copyright © 2020 Appollo. All rights reserved.
//

import UIKit

class DisplayActivityViewController: UIViewController {
    
    @IBOutlet var title: UILabel!
    @IBOutlet var description: UILabel!
    
    var activity: ActivityCell

    override func viewDidLoad() {
        super.viewDidLoad()
        title.text = activity.title
        description.text = activity.description

        // Do any additional setup after loading the view.
    }

}
