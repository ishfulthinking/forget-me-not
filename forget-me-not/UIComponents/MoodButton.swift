//
//  MoodButton.swift
//  forget-me-not
//
//  Created by Ish Perez on 12/25/19.
//  Copyright © 2019 Appollo. All rights reserved.
//

import SwiftUI

class MoodButton: UIButton {
    override init(frame: CGRect) {
        super.init(frame: frame)
        loadView()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }
    
    private func loadView() {
        
        layer.masksToBounds = true
        translatesAutoresizingMaskIntoConstraints = false
    }
}
