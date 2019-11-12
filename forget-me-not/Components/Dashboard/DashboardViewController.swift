//
//  DashboardViewController.swift
//  forget-me-not
//
//  Created by Ishmael Perez on 11/10/19.
//  Copyright © 2019 Appollo. All rights reserved.
//

import Foundation
import UIKit

class DashboardViewController: UIViewController, UITextFieldDelegate {
    // MARK: Properties
    @IBOutlet weak var welcomeText: UITextView!
    @IBOutlet weak var namePrompt: UITextView!
    @IBOutlet weak var nameTextField: UITextField!
    var name: String?
    
    // MARK: Actions
    @IBAction func checkTextFieldReturn(_ sender: Any) {
        if nameIsValid(entered: nameTextField.text) {
            self.name = nameTextField.text
        }
    }
    
    private func sendGreeting() {
        guard let welcomeText = welcomeText else { return }
        welcomeText.text = "Hello " + name!
    }
    
    private func nameIsValid(entered: String?) -> Bool {
        if entered == nil { return false }
        return entered!.count > 0
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor(red: 113, green: 80, blue: 143, alpha: 1.0)
        self.title = "Dashboard"
        print("Loaded dashboard view controller.")
    }
}
