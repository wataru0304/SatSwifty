//
//  UIView+SatSwifty.swift
//  SatSwifty
//
//  Created by Wataru Weng on 2024/6/25.
//

import UIKit

public extension UIView {
    
    // MARK: - Layouts
    func frame(_ rect: CGRect) -> Self {
        self.frame = rect
        return self
    }
    
    func bounds(_ bounds: CGRect) -> Self {
        self.bounds = bounds
        return self
    }
    
    func size(_ size: CGSize) -> Self {
        self.frame = CGRect(x: self.frame.origin.x,
                            y: self.frame.origin.y,
                            width: size.width,
                            height: size.height)
        return self
    }
    
    func offsetBt(x: CGFloat, y: CGFloat) -> Self {
        self.frame = self.frame.offsetBy(dx: x, dy: y)
        return self
    }
    
    func contentMode(_ contentMode: UIView.ContentMode) -> Self {
        self.contentMode = contentMode
        return self
    }
    
    func isUserInteractionEnabled(_ isUserInteractionEnabled: Bool) -> Self {
        self.isUserInteractionEnabled = isUserInteractionEnabled
        return self
    }
    
    func tag(_ tag: Int) -> Self {
        self.tag = tag
        return self
    }
    
    func clipsToBounds(_ clipsToBounds: Bool) -> Self {
        self.clipsToBounds = clipsToBounds
        return self
    }
    
    func masksToBounds(_ flag: Bool) -> Self {
        self.layer.masksToBounds = flag
        return self
    }
    
    // MARK: - Style
    func backgroundColor(_ backgroundColor: UIColor) -> Self {
        self.backgroundColor = backgroundColor
        return self
    }
    
    func alpha(_ alpha: CGFloat) -> Self {
        self.alpha = alpha
        return self
    }
    
    func tintColor(_ color: UIColor) -> Self {
        self.tintColor = color
        return self
    }
    
    func isHidden(_ isHidden: Bool) -> Self {
        self.isHidden = isHidden
        return self
    }
    
    @discardableResult
    func cornerRadius(_ cornerRadius: CGFloat) -> Self {
        roundCorners([.allCorners], radius: cornerRadius)
        return self
    }
    
    func roundCorners(_ corners: UIRectCorner, radius: CGFloat)  -> Self {
        self.clipsToBounds = true
        self.layer.cornerRadius = radius
        self.layer.maskedCorners = CACornerMask(rawValue: corners.rawValue)
        return self
    }
    
    func borderColor(_ color: UIColor) -> Self {
        self.layer.borderColor = color.cgColor
        return self
    }
    
    func borderWidth(_ width: CGFloat) -> Self {
        self.layer.borderWidth = width
        return self
    }
    
    func border(color: UIColor, width: CGFloat) -> Self {
        self.layer.borderColor = color.cgColor
        self.layer.borderWidth = width
        return self
    }
    
    func subView(_ view: UIView) -> Self {
        self.addSubview(view)
        return self
    }
    
    func addGestureRecognizer(gestureRecognizer: UIGestureRecognizer) -> Self {
        self.addGestureRecognizer(gestureRecognizer)
        return self
    }
    
    func shadowOffset(_ shadowOffset: CGSize) -> Self {
        self.layer.shadowOffset = shadowOffset
        return self
    }
    
    func shadowOpacity(_ shadowOpacity: Float) -> Self {
        self.layer.shadowOpacity = shadowOpacity
        return self
    }
    
    func shadowRadius(_ shadowRadius: CGFloat) -> Self {
        self.layer.shadowRadius = shadowRadius
        return self
    }
    
    func shadowColor(_ shadowColor: UIColor) -> Self {
        self.layer.shadowColor = shadowColor.cgColor
        return self
    }
}
