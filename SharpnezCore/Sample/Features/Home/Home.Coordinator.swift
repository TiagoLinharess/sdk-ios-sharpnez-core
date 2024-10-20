//
//  Coordinator.swift
//  SharpnezCore
//
//  Created by Tiago Linhares on 19/10/24.
//

import UIKit

extension Features.Home {
    final class Coordinator {
        // MARK: - Properties
        
        let navigationController: UINavigationController
        
        // MARK: - Init -
        
        init(navigationController: UINavigationController = UINavigationController()) {
            self.navigationController = navigationController
        }
        
        // MARK: - Start -
        
        func start() -> UINavigationController {
            let viewController = build(onSelectSample: navigate(to:))
            navigationController.pushViewController(viewController, animated: true)
            return navigationController
        }
        
        // MARK: - Samples -
        
        func navigate(to sample: Sample) {
            var viewController: UIViewController
            
            switch sample {
            case .imageView:
                viewController = Features.UIImageView.build()
            }
            
            navigationController.pushViewController(viewController, animated: true)
        }
    }
}
