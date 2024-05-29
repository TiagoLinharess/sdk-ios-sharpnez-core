//
//  Date+Extensions.swift
//  SharpnezCore
//
//  Created by Tiago Linhares on 23/05/24.
//

import Foundation

public extension Date {
    
    static func formattedNowString() -> String {
        let date = self.now
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = DateFormatter.dateFormat(fromTemplate: "yyyyMMdd, HH:mm", options: 0, locale: .current)
        let stringDate = dateFormatter.string(from: date)
        
        return stringDate
    }
}
