//
//  Double+Extension.swift
//  SatSwifty
//
//  Created by Wataru Weng on 2024/6/25.
//

import Foundation

public extension Double {
    func rounding(maximumFractionDigits: Int = 2, roundingMode: NumberFormatter.RoundingMode = .down) -> String {
        let numberFormatter = NumberFormatter()
        numberFormatter.numberStyle = .decimal
        numberFormatter.maximumFractionDigits = maximumFractionDigits
        numberFormatter.roundingMode = roundingMode
        return numberFormatter.string(for: self) ?? ""
    }

    var formattedDistance: String {
        if self < 999.5 {
            return "\(self.rounding(maximumFractionDigits: 0, roundingMode: .halfUp)) 公尺"
        } else {
            let km = self / 1000
            return "\(km.rounding(maximumFractionDigits: 1, roundingMode: .halfUp)) 公里"
        }
    }
}
