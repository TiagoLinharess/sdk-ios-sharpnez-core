//
//  CoreDateFormat.swift
//  SharpnezCore
//
//  Created by Tiago Linhares on 21/10/24.
//

public enum CoreDateFormat: String, CaseIterable {
    /// Default date by location
    case normal = "yyyyMMdd"
    
    /// Default date with hour and minute
    case normalWithHourMinute = "yyyyMMdd, HH:mm"
    
    /// Default date with hour, minute and second
    case normalWithHourMinuteAndSecond = "yyyyMMdd, HH:mm:ss"
}
