//
//  ViewModel.swift
//  SharpnezCore
//
//  Created by Tiago Linhares on 19/10/24.
//

extension Features.Home {
    // MARK: - Protocol -
    
    protocol ViewModelProtocol {
        var samples: [Sample] { get }
        func didSelectSample(at index: Int)
    }
    
    // MARK: - ViewModel -
    
    final class ViewModel: ViewModelProtocol {
        // MARK: - Properties -
        
        var onSelectSample: ((Sample) -> Void)?
        let samples: [Sample] = Sample.allCases
        
        // MARK: - Public Methods -
        
        func didSelectSample(at index: Int) {
            onSelectSample?(samples[index])
        }
    }
}
