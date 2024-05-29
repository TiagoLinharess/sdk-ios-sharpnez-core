//
//  String+extensions.swift
//  SharpnezCore
//
//  Created by Tiago Linhares on 23/05/24.
//

import Foundation

public extension String {
    
    func toFormattedDate() -> Date? {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = DateFormatter.dateFormat(fromTemplate: "yyyyMMdd, HH:mm", options: 0, locale: .current)
        
        return dateFormatter.date(from: self)
    }
}
