//
//  UILabel+SatSwifty.swift
//  SatSwifty
//
//  Created by Wataru Weng on 2024/6/25.
//

import UIKit

public extension UILabel {
    
    func font(_ font: UIFont) -> Self {
        self.font = font
        return self
    }
    
    func text(_ text: String) -> Self {
        self.text = text
        return self
    }
    
    func textColor(_ color: UIColor) -> Self {
        self.textColor = color
        return self
    }
    
    func textAlignment(_ textAlignment: NSTextAlignment) -> Self {
        self.textAlignment = textAlignment
        return self
    }
    
    func numberOfLines(_ numberOfLines: Int) -> Self {
        self.numberOfLines = numberOfLines
        return self
    }
    
    func isEnabled(_ isEnabled: Bool) -> Self {
        self.isEnabled = isEnabled
        return self
    }
}
