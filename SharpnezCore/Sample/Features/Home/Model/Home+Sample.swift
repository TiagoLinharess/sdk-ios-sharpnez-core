//
//  Samples.swift
//  SharpnezCore
//
//  Created by Tiago Linhares on 19/10/24.
//

extension Features.Home {
    enum Sample {
        case imageView
        
        var title: String {
            switch self {
            case .imageView: return "Image View"
            }
        }
    }
}
