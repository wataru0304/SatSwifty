//
//  UIToolbar+SatSwifty.swift
//  SatSwifty
//
//  Created by Wataru Weng on 2024/6/25.
//

import UIKit

public extension UIToolbar {    
    func items(_ items: [UIBarButtonItem]?, animated: Bool) -> Self {
        self.setItems(items, animated: animated)
        return self
    }
}
