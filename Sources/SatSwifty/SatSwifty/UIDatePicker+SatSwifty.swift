//
//  UIDatePicker+SatSwifty.swift
//  SatSwifty
//
//  Created by Wataru Weng on 2024/6/25.
//

import UIKit

public extension UIDatePicker {
    
    func datePickerMode(_ mode: UIDatePicker.Mode) -> Self {
        self.datePickerMode = mode
        return self
    }
    
    func date(_ date: Date = Date(), animated: Bool) -> Self {
        self.setDate(date, animated: animated)
        return self
    }
    
    @available(iOS 13.4, *)
    func preferredDatePickerStyle(_ style: UIDatePickerStyle) -> Self {
        self.preferredDatePickerStyle = style
        return self
    }
    
    func locale(_ locale: Locale) -> Self {
        self.locale = locale
        return self
    }
    
    func minimumDate(_ minimumDate: Date) -> Self {
        self.minimumDate = minimumDate
        return self
    }
    
    func maximumDate(_ maximumDate: Date) -> Self {
        self.maximumDate = maximumDate
        return self
    }
    
    func fit() -> Self {
        self.sizeToFit()
        return self
    }
}
