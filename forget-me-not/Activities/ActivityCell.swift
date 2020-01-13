//
//  ActivityCell.swift
//  Forget-Me-Not
//
//  Created by Ishmael Perez on 1/10/20.
//  Copyright © 2020 Appollo. All rights reserved.
//

import Foundation
import UIKit

class ActivityCell: NSObject {
    var title: String = ""
    var description: String = ""
    var time: Time
    var category: Category
    var people: People
    
    init(title: String, description: String, time: Time, category: Category, people: People) {
        self.title = title
        self.description = description
        self.time = time
        self.category = category
        self.people = people
    }
    
    class func generateActivityList() -> [ActivityCell] {
        var activityList = [ActivityCell]()
        
        activityList.append(ActivityCell(
            title: "5-Senses Grounding",
            description: ""
            time: .short, category: .relief, people: .alone))
        
        return activityList
    }
}

enum Time: String {
    case short
    case medium
    case long
}

enum Category: String {
    case relief
    case social
    case creative
    case physical
}

enum People: String {
    case alone
    case pair
    case group
}
