//
//  MainMenuView.swift
//  forget-me-not
//
//  Created by Ishmael Perez on 11/10/19.
//  Copyright © 2019 Appollo. All rights reserved.
//

import SwiftUI
import UIKit

class DashboardView: UIScrollView {

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
        instance.text = "Welcome back!"
        instance.textAlignment = .center
        instance.translatesAutoresizingMaskIntoConstraints = false
        instance.font = UIFont(name: .standard, weight: .regular, style: .regular, size: 16)
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
        backgroundColor = .fmnPurple

        addSubview(greetingContainer)
        NSLayoutConstraint.activate([
            greetingContainer.topAnchor.constraint(equalTo: topAnchor, constant: 16),
            greetingContainer.leftAnchor.constraint(equalTo: leftAnchor, constant: 16),
            greetingContainer.rightAnchor.constraint(equalTo: rightAnchor, constant: -16),
            greetingContainer.heightAnchor.constraint(equalTo: heightAnchor, constant: 40),
            greetingContainer.widthAnchor.constraint(equalTo: widthAnchor)
        ])

        greetingContainer.addSubview(greetingLabel)
        NSLayoutConstraint.activate([
            greetingLabel.topAnchor.constraint(equalTo: topAnchor, constant: 16)
        ])
        greetingLabel.center = self.center
        greetingLabel.center.x = self.center.x

        addSubview(statsContainer)
        statsContainer.addSubview(todayContainer)
        statsContainer.addSubview(historyContainer)
    }
}
