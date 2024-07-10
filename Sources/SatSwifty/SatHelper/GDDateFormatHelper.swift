//
//  SatDateFormat.swift
//  SatSwifty
//
//  Created by Wataru Weng on 2024/6/25.
//

import Foundation

public enum SatDateFormat: String {
    /// yyyy-MM-dd HH:mm:ss
    case dateTime = "yyyy-MM-dd HH:mm:ss"
    /// yyyy-MM-dd HH:mm
    case dateTime2 = "yyyy-MM-dd HH:mm"
    /// yyyy-MM-dd HH:mm
    case dateTime3 = "yyyy/MM/dd HH:mm"
    /// M/dd
    case date_Mdd = "M/dd"
    /// yyyy-MM-dd
    case date_yyyyMMdd = "yyyy-MM-dd"
    /// HH:mm
    case time = "HH:mm"
    /// yyyy/MM
    case yearMonth = "yyyy/MM"
    /// yyyy/MM/dd
    case yearMonthDay = "yyyy/MM/dd"
    /// yyyy 年 MM 月
    case yearMonth_zh = "yyyy 年 MM 月"
    /// d 日
    case day_zh = "d 日"
}

public enum Day: Int, CaseIterable, Codable {
    case monday = 1
    case tuesday = 2
    case wednesday = 3
    case thursday = 4
    case friday = 5
    case saturday = 6
    case sunday = 7
    
    var description: String {
        switch self {
        case .monday:
            return "星期一"
        case .tuesday:
            return "星期二"
        case .wednesday:
            return "星期三"
        case .thursday:
            return "星期四"
        case .friday:
            return "星期五"
        case .saturday:
            return "星期六"
        case .sunday:
            return "星期日"
        }
    }
    
    static var today: Day {
        let calendar = Calendar(identifier: Calendar.current.identifier)
        let weekday = calendar.component(.weekday, from: Date()) - 1
        return Day(rawValue: weekday) ?? .sunday
    }
}

public class SatDateFormatHelper {
    static let shared = SatDateFormatHelper()
    private init() {}
    
    private let dateFormatter: DateFormatter = {
        let df = DateFormatter()
        df.locale = Locale(identifier: "zh_TW")
        return df
    }()
    
    public func format(_ format: SatDateFormat) -> DateFormatter {
        dateFormatter.dateFormat = format.rawValue
        return dateFormatter
    }

    public func format(_ format: String) -> DateFormatter {
        dateFormatter.dateFormat = format
        return dateFormatter
    }
}

public extension Date {
    var calendar: Calendar {
        return Calendar(identifier: Calendar.current.identifier)
    }
    
    var year: Int {
        get {
            return calendar.component(.year, from: self)
        }
        set {
            guard newValue > 0 else { return }
            let currentYear = calendar.component(.year, from: self)
            let yearsToAdd = newValue - currentYear
            if let date = calendar.date(byAdding: .year, value: yearsToAdd, to: self) {
                self = date
            }
        }
    }

    var month: Int {
        get {
            return calendar.component(.month, from: self)
        }
        set {
            let allowedRange = calendar.range(of: .month, in: .year, for: self)!
            guard allowedRange.contains(newValue) else { return }

            let currentMonth = calendar.component(.month, from: self)
            let monthsToAdd = newValue - currentMonth
            if let date = calendar.date(byAdding: .month, value: monthsToAdd, to: self) {
                self = date
            }
        }
    }
    
    var day: Int {
        get {
            return calendar.component(.day, from: self)
        }
        set {
            let allowedRange = calendar.range(of: .day, in: .month, for: self)!
            guard allowedRange.contains(newValue) else { return }

            let currentDay = calendar.component(.day, from: self)
            let daysToAdd = newValue - currentDay
            if let date = calendar.date(byAdding: .day, value: daysToAdd, to: self) {
                self = date
            }
        }
    }
     
    func toString(format: SatDateFormat) -> String {
        SatDateFormatHelper.shared.format(format).string(from: self)
    }

    func toString(format: String) -> String {
        SatDateFormatHelper.shared.format(format).string(from: self)
    }
    
    func isSameDay(with date: Date) -> Bool {
        return year == date.year && month == date.month && day == date.day
    }
}

public extension Int {
    /// Convert timestamp to Date
    var toDate: Date {
        Date(timeIntervalSince1970: TimeInterval(self))
    }
    
    /// Convert timestamp to date string with format `yyyy-MM-dd HH:mm:ss`
    var toDateTimeString: String {
        toDate.toString(format: .dateTime)
    }
}

public extension String {
    func toDate(format: SatDateFormat) -> Date {
        SatDateFormatHelper.shared.format(format).date(from: self) ?? Date()
    }
}
