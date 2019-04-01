//
//  StackViewExtension.swift
//  AdaptiveLayoutTest
//
//  Created by Nikesh Shakya on 4/1/19.
//  Copyright © 2019 Nikesh Shakya. All rights reserved.
//

import Foundation
import UIKit

extension UIStackView {
    
    open override func awakeFromNib() {
        if self.axis == .horizontal {
            self.spacing = self.spacing.relativeToIphone8Width()
        } else {
            self.spacing = self.spacing.relativeToIphone8Height()
        }
        self.layoutIfNeeded()
    }
    
}
