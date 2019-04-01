//
//  RoundedView.swift
//  AdaptiveLayoutTest
//
//  Created by Nikesh Shakya on 4/1/19.
//  Copyright © 2019 Nikesh Shakya. All rights reserved.
//

import Foundation
import UIKit

@IBDesignable
class RoundedView: UIView {
    
    @IBInspectable var borderWidth: CGFloat = 0.0 {
        didSet {
            layer.borderWidth = borderWidth
        }
    }
    
    @IBInspectable var borderColor: UIColor? {
        didSet {
            layer.borderColor = borderColor?.cgColor
        }
    }
    
    @IBInspectable var isCircular: Bool = false {
        didSet {
            if isCircular {
                cornerRadius = self.frame.width / 2
            }
        }
    }
    @IBInspectable var cornerRadius: CGFloat = 0.0 {
        didSet {
            self.layer.cornerRadius = cornerRadius
        }
    }
    
    override func awakeFromNib() {
        if isCircular {
            self.cornerRadius = self.frame.width / 2
        }
//        else {
//            self.layer.cornerRadius = cornerRadius.relativeToIphone8Width()
//        }
//        self.layer.borderWidth = borderWidth.relativeToIphone8Width()
    }
    
    override func layoutSubviews() {
        if isCircular {
            self.cornerRadius = self.frame.width / 2
        }
    }
}
