//
//  CardView.swift
//  forget-me-not
//
//  Created by Ish Perez on 12/25/19.
//  Copyright © 2019 Appollo. All rights reserved.
//

import Foundation
import UIKit

class CardView: UIView {
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        self.backgroundColor = UIColor.Transparencies.medLight
        self.layer.cornerRadius = 8
        self.layer.masksToBounds = true
        self.translatesAutoresizingMaskIntoConstraints = false
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }
}
