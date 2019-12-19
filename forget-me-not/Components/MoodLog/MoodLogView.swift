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

class MoodLogView: UIView {

    override init(frame: CGRect) {
        super.init(frame: frame)
        setupViews()
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    // MARK: Components

    let stackView: UIStackView = {
        let instance = UIStackView(frame: .zero)
        instance.translatesAutoresizingMaskIntoConstraints = false
        instance.axis = .vertical
        instance.isLayoutMarginsRelativeArrangement = true
        instance.layoutMargins = UIEdgeInsets(top: 16,
                                              left: 16,
                                              bottom: 16,
                                              right: 16)
        return instance
    }()

    let feelingLabel: UILabel = {
        let instance = UILabel()
        instance.textAlignment = .center
        instance.text = "Today I feel..."
        instance.translatesAutoresizingMaskIntoConstraints = false
        return instance
    }()

    let moodButton: UIButton = {
        let instance = UIButton()
        return instance
    }()

    let reasonLabel: UILabel = {
        let instance = UILabel()
        instance.textAlignment = .center
        instance.text = "because..."
        instance.translatesAutoresizingMaskIntoConstraints = false
        return instance
    }()

    let reasonEntryField: UITextField = {
        let instance = UITextField()
        instance.placeholder = "I ate an entire cheese pizza on my own"
        instance.isEnabled = true
        instance.translatesAutoresizingMaskIntoConstraints = false
        return instance
    }()

    // MARK: View setup

    func setupViews() {
        backgroundColor = .gray
        addSubview(stackView)
        NSLayoutConstraint.activate([
            stackView.topAnchor.constraint(equalTo: topAnchor),
            stackView.leftAnchor.constraint(equalTo: leftAnchor),
            stackView.rightAnchor.constraint(equalTo: rightAnchor),
            stackView.bottomAnchor.constraint(equalTo: bottomAnchor)
        ])

        stackView.addArrangedSubviews([
            feelingLabel,
            moodButton,
            reasonLabel,
            reasonEntryField
        ])

        stackView.setCustomSpacings(spacing: 16, views: [
            feelingLabel,
            moodButton,
            reasonLabel,
            reasonEntryField
        ])
    }
}
