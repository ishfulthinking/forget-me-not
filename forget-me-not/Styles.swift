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
    // Try using ColorHexa to find more colors!
    static let fmnPurple = UIColor(red: 130/255, green: 130/255, blue: 238/255, alpha: 1.0) // #8282EE
    static let fmnLightPurple = UIColor(red: 197/255, green: 197/255, blue: 247/255, alpha: 1.0) // #C5C5F7
    static let fmnDarkPurple = UIColor(red: 63/255, green: 63/255, blue: 229/55, alpha: 1.0) // #3F3FE5
    static let fmnPink = UIColor(red: 184/255, green: 130/255, blue: 238/255, alpha: 1.0) // #B882EE
    static let fmnBlue = UIColor(red: 130/255, green: 184/255, blue: 238/255, alpha: 1.0) // #82B8EE
    static let fmnDarkBlue = UIColor(red: 33/255, green: 134/255, blue: 235/255, alpha: 1.0) // #2186EB
    static let fmnAqua = UIColor(red: 130/255, green: 238/255, blue: 238/255, alpha: 1.0) // #82EEEE
    static let fmnLime = UIColor(red: 184/255, green: 238/255, blue: 130/255, alpha: 1.0) // #B8EE82
    static let fmnGreen = UIColor(red: 130/255, green: 238/255, blue: 130/255, alpha: 1.0) // #82EE82
    static let fmnYellow = UIColor(red: 238/255, green: 238/255, blue: 130/255, alpha: 1.0) // #EEEE82
    static let fmnOrange = UIColor(red: 238/255, green: 184/255, blue: 130/255, alpha: 1.0) // #EEB882
    static let fmnRed = UIColor(red: 238/255, green: 130/255, blue: 130/255, alpha: 1.0) // #EE8282

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

extension UIFont {
    public enum FontName {
        case standard

        public var description: String {
            switch self {
            case .standard:
                return "Rubik"
            }
        }
    }

    public enum FontWeight {
        case regular
        case bold

        public var modifier: String {
            switch self {
            case .regular:
                return "-Regular"
            case .bold:
                return "-Bold"
            }
        }
    }

    public enum FontStyle {
        case regular
        case italic

        public var modifier: String {
            switch self {
            case .regular:
                return ""
            case .italic:
                return "-Italic"
            }
        }
    }

    convenience init(name: FontName, weight: FontWeight, style: FontStyle, size: CGFloat) {
        self.init(name: name.description + weight.modifier + style.modifier, size: size)!
    }
}

extension UIStackView {
    func addArrangedSubviews(_ views: [UIView]) {
        for view in views {
            addArrangedSubview(view)
        }
    }

    func setCustomSpacings(spacing: CGFloat, views: [UIView]) {
        for view in views {
            setCustomSpacing(spacing, after: view)
        }
    }
}
