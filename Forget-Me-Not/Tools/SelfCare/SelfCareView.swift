//
//  SelfCareView.swift
//  Forget-Me-Not
//
//  Created by Sarah Shahinpour on 10/28/19.
//  Copyright © 2019 Appollo. All rights reserved.
//

import Foundation
import UIKit


class SelfCareView: UIView {
  var shouldSetupConstraints = true
    
  override init(frame: CGRect) {
    super.init(frame: frame)
  }

  required init?(coder aDecoder: NSCoder) {
    super.init(coder: aDecoder)
  }
    
  override func updateConstraints() {
    if(shouldSetupConstraints) {
      // AutoLayout constraints
      shouldSetupConstraints = false
    }
    super.updateConstraints()
  }
}
