//
//  Array+Extension.swift
//  SatSwifty
//
//  Created by Wataru Weng on 2024/6/25.
//

import Foundation

public extension Array where Element: Hashable {
  func removingDuplicates() -> [Element] {
      var addedDict = [Element: Bool]()
      return filter {
        addedDict.updateValue(true, forKey: $0) == nil
      }
   }
   mutating func removeDuplicates() {
      self = self.removingDuplicates()
   }
}
