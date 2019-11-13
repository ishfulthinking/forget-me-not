//
//  TabBarController.swift
//  forget-me-not
//
//  Created by Ishmael Perez on 11/10/19.
//  Copyright © 2019 Appollo. All rights reserved.
//

import Foundation
import UIKit

class TabBarController: UITabBarController, UITabBarControllerDelegate {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        delegate = self
    }
        
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        let dashboardViewController = DashboardViewController()
        dashboardViewController.tabBarItem = UITabBarItem(title: "Dashboard", image: UIImage(named: "home.png"), selectedImage: UIImage(named: "home.png"))
        
        let moodLogViewController = MoodLogViewController()
        moodLogViewController.tabBarItem = UITabBarItem(title: "Mood Log", image: UIImage(named: "thought.png"), selectedImage: UIImage(named: "thought.png"))
        
        let journalViewController = JournalViewController()
        journalViewController.tabBarItem = UITabBarItem(title: "Journal Log", image: UIImage(named: "journal.png"), selectedImage: UIImage(named: "journal.png"))
        
        let selfCareViewController = SelfCareViewController()
        selfCareViewController.tabBarItem = UITabBarItem(title: "Self Care", image: UIImage(named: "selfcare.png"), selectedImage: UIImage(named: "selfcare.png"))
        
        let medicationViewController = MedicationViewController()
        medicationViewController.tabBarItem = UITabBarItem(title: "Medication", image: UIImage(named: "medication.png"), selectedImage: UIImage(named: "medication.png"))
        
        self.viewControllers = [
            dashboardViewController,
            moodLogViewController,
            journalViewController,
            selfCareViewController,
            medicationViewController
        ]
    }

    // Delegate methods
    func tabBarController(_ tabBarController: UITabBarController, shouldSelect viewController: UIViewController) -> Bool {
        print("Should select viewController: \(viewController.title ?? "") ?")
        return true;
    }
}
