//
//  TabBarController.swift
//  forget-me-not
//
//  Created by Ishmael Perez on 11/10/19.
//  Copyright © 2019 Appollo. All rights reserved.
//

import Foundation
import UIKit

class TabBarController: UITabBarController {
    // The five features' view controllers. We'll call them when they're tapped.
    let dashboardViewController = DashboardViewController()
    let moodLogViewController = MoodLogViewController()
    let journalViewController = JournalViewController()
    let selfCareViewController = SelfCareViewController()
    let medicationViewController = MedicationViewController()

    let tabBarController = TabBarController()
    tabBarController.viewControllers =
        [dashboardViewController,
         moodLogViewController,
         journalViewController,
         selfCareViewController,
         medicationViewController]

    window!.rootViewController = tabBarController
    tabBarController.selectedViewController = dashboardViewController
    tabBarController.selectedIndex = 1

}
