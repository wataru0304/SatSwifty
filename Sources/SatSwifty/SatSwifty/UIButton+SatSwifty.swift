//
//  UIButton+SatSwifty.swift
//  SatSwifty
//
//  Created by Wataru Weng on 2024/6/25.
//

import UIKit

public extension UIButton {
    
    func font(_ font: UIFont) -> Self {
        self.titleLabel?.font = font
        return self
    }
    
    func image(_ image: UIImage, for state: UIControl.State) -> Self {
        self.setImage(image, for: state)
        return self
    }
    
    func backgroundImage(_ image: UIImage?, for state: UIControl.State) -> Self {
        self.setBackgroundImage(image, for: state)
        return self
    }
    
    func title(_ title: String, for state: UIControl.State) -> Self {
        self.setTitle(title, for: state)
        return self
    }
    
    func attributedTitle(_ title: NSAttributedString?, for state: UIControl.State) -> Self {
        self.setAttributedTitle(title, for: state)
        return self
    }
    
    func titleColor(_ color: UIColor, for state: UIControl.State) -> Self {
        self.setTitleColor(color, for: state)
        return self
    }
    
    func isEnabled(_ isEnabled: Bool) -> Self {
        self.isEnabled = isEnabled
        return self
    }
    
    func isSelected(_ isSelected: Bool) -> Self {
        self.isSelected = isSelected
        return self
    }
    
    func isHighlighted(_ isHighlighted: Bool) -> Self {
        self.isHighlighted = isHighlighted
        return self
    }
    
    func target(_ target: Any?, action: Selector, for controlEvents: UIControl.Event) -> Self {
        self.addTarget(target, action: action, for: controlEvents)
        return self
    }
}
