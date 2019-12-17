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
        tabBar.barTintColor = UIColor(red: 200/255, green: 200/255, blue: 200/255, alpha: 1.0)
        setupTabBar()
        print("Loaded navigation tab bar.")
    }

    func setupTabBar() {
        let dashboardViewController = createTabBarController(vc: DashboardViewController(), title: "Dashboard", image: #imageLiteral(resourceName: "home"), selectedImage: #imageLiteral(resourceName: "home"))
        let moodLogViewController = createTabBarController(vc: MoodLogViewController(), title: "Mood Log", image: #imageLiteral(resourceName: "thought"), selectedImage: #imageLiteral(resourceName: "thought"))
        let journalViewController = createTabBarController(vc: JournalViewController(), title: "Journal", image: #imageLiteral(resourceName: "journal"), selectedImage: #imageLiteral(resourceName: "journal"))
        let selfCareViewController = createTabBarController(vc: SelfCareViewController(), title: "Self Care", image: #imageLiteral(resourceName: "selfcare"), selectedImage: #imageLiteral(resourceName: "selfcare"))
        let medicationViewController = createTabBarController(vc: MedicationViewController(), title: "Medication", image: #imageLiteral(resourceName: "medication"), selectedImage: #imageLiteral(resourceName: "medication"))


        viewControllers = [
            dashboardViewController,
            moodLogViewController,
            journalViewController,
            selfCareViewController,
            medicationViewController
        ]

        guard let items = tabBar.items else { return }
        for item in items {
            item.imageInsets = UIEdgeInsets.init(top: 4, left: 0, bottom: -4, right: 0)
        }
    }
}

// Helper to make tab bar creation prettier
extension UITabBarController {
    func createTabBarController(vc: UIViewController, title: String, image: UIImage, selectedImage: UIImage) -> UINavigationController {
        let viewController = vc
        let tabBarController = UINavigationController(rootViewController: viewController)
        tabBarController.tabBarItem.title = title
        tabBarController.tabBarItem.image = image
        tabBarController.tabBarItem.selectedImage =  selectedImage
        return tabBarController
    }
}
