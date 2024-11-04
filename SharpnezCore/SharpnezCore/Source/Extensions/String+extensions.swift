//
//  String+extensions.swift
//  SharpnezCore
//
//  Created by Tiago Linhares on 23/05/24.
//

import Foundation

public extension String {
    
    @available(*, deprecated, message: "Use toDate(with:) instead")
    func toFormattedDate() -> Date? {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = DateFormatter
            .dateFormat(
                fromTemplate: "yyyyMMdd, HH:mm",
                options: 0,
                locale: .current
            )
        
        return dateFormatter.date(from: self)
    }
    
    /// Format String to Date
    ///  - Parameters:
    ///     - format: CoreDateFormat = .normal
    ///  - Returns: Date?
    func toDate(with format: CoreDateFormat = .normal) -> Date? {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = DateFormatter
            .dateFormat(
                fromTemplate: format.rawValue,
                options: 0,
                locale: .current
            )
        
        return dateFormatter.date(from: self)
    }
    
    /// Format String Date
    ///  - Parameters:
    ///     - baseFormat: CoreDateFormat = .normal
    ///     - format: CoreDateFormat
    ///  - Returns: String?
    func formatDate(
        from baseFormat: CoreDateFormat = .normal,
        to format: CoreDateFormat
    ) -> String? {
        let get = DateFormatter()
        get.dateFormat = DateFormatter
            .dateFormat(
                fromTemplate: baseFormat.rawValue,
                options: 0,
                locale: .current
            )
        
        let result = DateFormatter()
        result.dateFormat = DateFormatter
            .dateFormat(
                fromTemplate: format.rawValue,
                options: 0,
                locale: .current
            )
        
        guard let date = get.date(from: self) else { return nil }
        return result.string(from: date)
    }
}
