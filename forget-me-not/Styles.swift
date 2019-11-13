//
//  Styles.swift
//  forget-me-not
//
//  Created by Ishmael Perez on 11/11/19.
//  Copyright © 2019 Appollo. All rights reserved.
//

import Foundation
import UIKit

// We'll use this later on to avoid hard-coding color values all over the place.
// Instead, we could do something like "text.color = UIColor(theme.mainColor)" etc.
extension UIColor {
    func colorFromHexString (_ hex:String) -> UIColor {
        var cString:String = hex.trimmingCharacters(in: .whitespacesAndNewlines).uppercased()
        
        if (cString.hasPrefix("#")) {
            cString.remove(at: cString.startIndex)
        }
        
        if ((cString.count) != 6) {
            return UIColor.gray
        }
        
        var rgbValue:UInt32 = 0
        Scanner(string: cString).scanHexInt32(&rgbValue)
        
        return UIColor(
            red: CGFloat((rgbValue & 0xFF0000) >> 16) / 255.0,
            green: CGFloat((rgbValue & 0x00FF00) >> 8) / 255.0,
            blue: CGFloat(rgbValue & 0x0000FF) / 255.0,
            alpha: CGFloat(1.0)
        )
    }
}
