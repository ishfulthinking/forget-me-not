//
//  CardLabel.swift
//  forget-me-not
//
//  Created by Ish Perez on 12/28/19.
//  Copyright © 2019 Appollo. All rights reserved.
//

import SwiftUI

class CardLabel: UILabel {
    override init(frame: CGRect) {
        super.init(frame: frame)
            
        self.textColor = .black
        self.font = UIFont(type: .system, style: .regular, size: 12.0)
        self.textAlignment = .center
        self.numberOfLines = 0
        self.isEnabled = true
        self.isHighlighted = false
        self.backgroundColor = UIColor.Transparencies.medLight
        self.translatesAutoresizingMaskIntoConstraints = false
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }
}
