//
//  UIPickerView+SatSwifty.swift
//  SatSwifty
//
//  Created by Wataru Weng on 2024/6/25.
//

import UIKit

public extension UIPickerView {
    func delegate(_ delegate: UIPickerViewDelegate) -> Self {
        self.delegate = delegate
        return self
    }
    
    func dataSource(_ dataSource: UIPickerViewDataSource) -> Self {
        self.dataSource = dataSource
        return self
    }
}
