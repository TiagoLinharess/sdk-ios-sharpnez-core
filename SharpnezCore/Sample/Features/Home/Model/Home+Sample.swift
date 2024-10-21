//
//  Samples.swift
//  SharpnezCore
//
//  Created by Tiago Linhares on 19/10/24.
//

extension Features.Home {
    enum Sample: CaseIterable {
        case imageView
        case date
        case string
        case timeInterval
        
        var title: String {
            switch self {
            case .imageView: return "ImageView + Extensions"
            case .date: return "Date + Extensions"
            case .string: return "String + Extensions"
            case .timeInterval: return "TimeInterval + Extensions"
            }
        }
    }
}
