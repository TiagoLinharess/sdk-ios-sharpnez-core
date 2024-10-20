//
//  Home+Builder.swift
//  SharpnezCore
//
//  Created by Tiago Linhares on 20/10/24.
//

extension Features.Home {
    static func build(onSelectSample: @escaping (Sample) -> Void) -> ViewController {
        let viewModel = ViewModel()
        viewModel.onSelectSample = onSelectSample
        return ViewController(viewModel: viewModel)
    }
}
