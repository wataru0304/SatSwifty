//
//  UIStackView+SatSwifty.swift
//  SatSwifty
//
//  Created by Wataru Weng on 2024/6/25.
//

import UIKit

public extension UIStackView {
    
    func axis(_ axis: NSLayoutConstraint.Axis) -> Self {
        self.axis = axis
        return self
    }
    
    func distribution(_ distribution: UIStackView.Distribution) -> Self {
        self.distribution = distribution
        return self
    }
    
    func alignment(_ alignment: UIStackView.Alignment) -> Self {
        self.alignment = alignment
        return self
    }
    
    func spacing(_ spacing: CGFloat) -> Self {
        self.spacing = spacing
        return self
    }
    
    func addSubView(_ view: UIView) -> Self {
        self.addArrangedSubview(view)
        return self
    }
    
    func addSubViews(_ views: [UIView]) -> Self {
        for view in views {
            self.addArrangedSubview(view)
        }
        return self
    }
}
