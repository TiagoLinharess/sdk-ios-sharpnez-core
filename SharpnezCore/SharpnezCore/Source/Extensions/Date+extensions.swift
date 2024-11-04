//
//  Date+Extensions.swift
//  SharpnezCore
//
//  Created by Tiago Linhares on 23/05/24.
//

import Foundation

public extension Date {
    
    @available(*, deprecated, message: "Use toString(to:) instead")
    static func formattedNowString() -> String {
        let date = self.now
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat =
        DateFormatter.dateFormat(
            fromTemplate: "yyyyMMdd, HH:mm",
            options: 0,
            locale: .current)
        let stringDate = dateFormatter.string(from: date)
        
        return stringDate
    }
    
    /// Format Date to String
    ///  - Parameters:
    ///     - format: CoreDateFormat = .normal
    ///  - Returns: String?
    func toString(to format: CoreDateFormat = .normal) -> String? {
        let result = DateFormatter()
        result.dateFormat = DateFormatter
            .dateFormat(
                fromTemplate: format.rawValue,
                options: 0,
                locale: .current
            )
        return result.string(from: self)
    }
}
