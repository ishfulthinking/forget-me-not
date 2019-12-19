//
//  JournalView.swift
//  forget-me-not
//
//  Created by Ishmael Perez on 12/11/19.
//  Copyright © 2019 Appollo. All rights reserved.
//

import Foundation
import UIKit

class JournalView: UIView {

    override init(frame: CGRect) {
        super.init(frame: frame)
        setupViews()
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented in JournalView")
    }

    // MARK: Components

    let journalTable: UITableView = {
        let instance = UITableView()
        instance.translatesAutoresizingMaskIntoConstraints = false
        instance.backgroundColor = .fmnDarkBlue
        return instance
    }()

    // MARK: View setup

    func setupViews() {
        print("Setting up views for journal...")
        backgroundColor = .fmnPurple

        addSubview(journalTable)
    }
}
