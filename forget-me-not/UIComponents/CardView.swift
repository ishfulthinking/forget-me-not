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
        setupViews()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }
    
    private func setupViews() {
        layer.cornerRadius = 8
        layer.masksToBounds = true
        translatesAutoresizingMaskIntoConstraints = false
    }
}
