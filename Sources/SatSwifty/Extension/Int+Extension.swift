//
//  Int+Extension.swift
//  SatSwifty
//
//  Created by Wataru Weng on 2024/6/25.
//

import Foundation

public extension Int {
    func format() -> String {
        let numberFormatter = NumberFormatter()
        numberFormatter.numberStyle = .decimal
        return numberFormatter.string(for: self) ?? ""
    }
    
    /// XX 時 XX 分
    func secondToHM() -> String {
        let hours = self / 3600
        let minutes = (self % 3600) / 60
        return String(format: "%02d 時 %02d 分", hours, minutes)
    }
    
    /// XX:XX:XX
    func secondToHMS() -> String {
        let hours = self / 3600
        let minutes = (self % 3600) / 60
        let remainingSeconds = self % 60
        return String(format: "%02d:%02d:%02d", hours, minutes, remainingSeconds)
    }
    
    /// XX:XX
    func secondToMS() -> String {
        let minutes = (self % 3600) / 60
        let remainingSeconds = self % 60
        return String(format: "%02d:%02d", minutes, remainingSeconds)
    }
}
