//
//  Bindable.swift
//  SharpnezCore
//
//  Created by Tiago Linhares on 20/01/25.
//

import Foundation

@MainActor
public final class Bindable<T> {
    
    // MARK: Typealias
    
    public typealias Listener = (T) -> Void

    // MARK: Properties
    
    private var listener: Listener?
    public var value: T {
        didSet {
            DispatchQueue.main.async {
                self.listener?(self.value)
            }
        }
    }
    
    // MARK: Init
    
    public init(_ value: T) {
        self.value = value
    }
    
    // MARK: Public methods
    
    public func bind(to listener: Listener?) {
        self.listener = listener
        DispatchQueue.main.async {
            listener?(self.value)
        }
    }
}
