//
//  TimeInterval+extensions.swift
//  SharpnezCore
//
//  Created by Tiago Linhares on 23/05/24.
//

import Foundation

public extension TimeInterval {
    
    func getMinutes() -> Int {
        let time = NSInteger(self)
        let minutes = (time / 60) % 60
        return minutes
    }
}
