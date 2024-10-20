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
        
        var title: String {
            switch self {
            case .imageView: return "ImageView + Extensions"
            case .date: return "Date + Extensions"
            }
        }
    }
}
