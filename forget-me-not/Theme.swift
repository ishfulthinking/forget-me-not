//
//  Styles.swift
//  forget-me-not
//
//  Created by Ishmael Perez on 11/11/19.
//  Copyright © 2019 Appollo. All rights reserved.
//

import Foundation
import UIKit

extension UIFont {
    struct Fonts {
        static let system = "Helvetica-Neue"
    }
    
    public enum FontType: String {
        case system
        
        public var name: String {
            switch self {
            case .system:
                return Fonts.system
            }
        }
    }
    
    public enum FontStyle: String {
        case regular
        case italic
        case bold
        case boldItalic
        
        public var description: String {
            switch self {
            case .regular:
                return "-Regular.ttf"
            case .italic:
                return "-Italic.ttf"
            case .bold:
                return "-Bold.ttf"
            case .boldItalic:
                return "-Bold-Italic.ttf"
            }
        }
    }
    
    convenience init?(type: FontType, style: FontStyle, size: CGFloat) {
        self.init(name: type.name + style.description, size: size)
    }
}

extension UIColor {
    struct Colors {
        static let fmnViolet = UIColor(hex: 0x8282ee)
        static let fmnBlue = UIColor(hex: 0x82b8ee)
        static let fmnYellow = UIColor(hex: 0xeeee82)
        static let fmnPurple = UIColor(hex: 0xb882ee)
        static let fmnOrange = UIColor(hex: 0xeeb882)
        static let fmnGreen = UIColor(hex: 0x82ee82)
        static let fmnRed = UIColor(hex: 0xee8282)
        static let fmnLightBlue = UIColor(hex: 0x82eeee)
        static let fmnPink = UIColor(hex: 0xee82ee)
    }
    
    struct Transparencies {
        static let lowLight = UIColor(red: 1.0, green: 1.0, blue: 1.0, alpha: 0.2)
        static let lowShade = UIColor(red: 0.0, green: 0.0, blue: 0.0, alpha: 0.2)
    }
    
    convenience init(hex: Int) {
        self.init(
            red:   CGFloat((hex & 0xFF0000) >> 16) / 255.0,
            green: CGFloat((hex & 0x00FF00) >> 8)  / 255.0,
            blue:  CGFloat(hex & 0x0000FF) / 255.0,
            alpha: 1.0
        )
    }
}




//    public enum SurveyOption: Int, CaseIterable {
//        case sales = 0
//        case customerSuccess
//        case marketing
//        case management
//        case other
//
//        public var description: String {
//            switch self {
//            case .sales:
//                return "sales"
//            case .customerSuccess:
//                return "customer success"
//            case .marketing:
//                return "marketing"
//            case .management:
//                return "management"
//            case .other:
//                return "other"
//            }
//        }
//
//        public var labelText: String {
//            switch self {
//            case .sales:
//                return "💰  Sales"
//            case .customerSuccess:
//                return "👥  Customer Success"
//            case .marketing:
//                return "📫  Marketing"
//            case .management:
//                return "📊  Management"
//            case .other:
//                return "💼  Other"
//            }
//        }
//
//
//    }
