//
//  MoodLogView.swift
//  forget-me-not
//
//  Created by Ishmael Perez on 12/9/19.
//  Copyright © 2019 Appollo. All rights reserved.
//

import Foundation
import SwiftUI
import UIKit

class MoodLogView: UIScrollView {

    override init(frame: CGRect) {
        super.init(frame: frame)
        showsVerticalScrollIndicator = false
        showsHorizontalScrollIndicator = false
        isScrollEnabled = false
        
        for family: String in UIFont.familyNames
        {
            print(family)
            if (Array(family)[0] == "R") {
                for names: String in UIFont.fontNames(forFamilyName: family)
                {
                    print("== \(names)")
                }
            }
        }
        
        setupViews()
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    // MARK: Components

    let containerView: CardView = {
        let instance = CardView()
        instance.backgroundColor = UIColor.Transparencies.lowLight
        return instance
    }()

    let greetingLabel: UILabel = {
        let instance = UILabel()
        instance.text = "Today I'm feeling..."
        instance.font = UIFont(type: .system, style: .bold, size: 20.0)
//        instance.font = UIFont(name: "Rubik-Regular.ttf", size: 20.0)
        instance.textAlignment = .center
        instance.numberOfLines = 0;
        instance.translatesAutoresizingMaskIntoConstraints = false
        return instance
    }()
    
    // MARK: View setup

    func setupViews() {
        print("Setting up MoodLogView.")
        backgroundColor = UIColor.Colors.fmnYellow
        
        addSubview(containerView)
        NSLayoutConstraint.activate([
            containerView.topAnchor.constraint(equalTo: topAnchor, constant: 16),
            containerView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 16),
            containerView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -16),
            containerView.centerXAnchor.constraint(equalTo: centerXAnchor),
            containerView.centerYAnchor.constraint(equalTo: centerYAnchor)
        ])
        
        containerView.addSubview(greetingLabel)
        NSLayoutConstraint.activate([
            greetingLabel.topAnchor.constraint(equalTo: containerView.topAnchor, constant: 16),
            greetingLabel.leadingAnchor.constraint(equalTo: containerView.leadingAnchor, constant: 16),
            greetingLabel.trailingAnchor.constraint(equalTo: containerView.trailingAnchor, constant: -16),
            greetingLabel.centerXAnchor.constraint(equalTo: containerView.centerXAnchor)
        ])
    }
}
