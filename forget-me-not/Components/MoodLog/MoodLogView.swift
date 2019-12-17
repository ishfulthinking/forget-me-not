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
        setupViews()

        showsVerticalScrollIndicator = false
        showsHorizontalScrollIndicator = false
        isScrollEnabled = false
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    // MARK: Components

    let greetingContainer: UIView = {
        let instance = UIView()
        instance.translatesAutoresizingMaskIntoConstraints = false
        return instance
    }()

    let greetingLabel: UILabel = {
        let instance = UILabel()
        instance.textAlignment = .center
        instance.text = "Welcome back!"
        instance.translatesAutoresizingMaskIntoConstraints = false
        return instance
    }()

    let statsContainer: UIStackView = {
        let instance =  UIStackView()
        return instance
    }()

    let todayContainer: UITableView = {
        let instance = UITableView()
        return instance
    }()

    let historyContainer: UITableView = {
        let instance = UITableView()
        return instance
    }()

    // MARK: View setup

    func setupViews() {
        print("Setting up views for dashboard...")
        backgroundColor = UIColor(red: 130/255, green: 130/255, blue: 238/255, alpha: 1.0)
        addSubview(greetingContainer)

        greetingContainer.addSubview(greetingLabel)
        NSLayoutConstraint.activate([
            greetingContainer.topAnchor.constraint(equalTo: topAnchor, constant: 16),
            greetingContainer.leftAnchor.constraint(equalTo: leftAnchor, constant: 16),
            greetingContainer.rightAnchor.constraint(equalTo: rightAnchor, constant: -16),
            greetingContainer.heightAnchor.constraint(equalTo: heightAnchor, constant: 40),
            greetingContainer.widthAnchor.constraint(equalTo: widthAnchor)
        ])

        addSubview(statsContainer)
        statsContainer.addSubview(todayContainer)
        statsContainer.addSubview(historyContainer)
    }
}
