//
//  UIImageView.ViewController.swift
//  SharpnezCore
//
//  Created by Tiago Linhares on 20/10/24.
//

import SharpnezCore
import SnapKit

extension Features.UIImageView {
    final class ViewController: UIViewController {
        // MARK: - Properties -
        
        private lazy var imageView: UIImageView = UIImageView()
    }
}

extension Features.UIImageView.ViewController {
    // MARK: - View Life Cicle -
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setup()
        load()
    }
    
    // MARK: - Private Methods -
    
    private func load() {
        guard let url = URL(string: "https://avatars.githubusercontent.com/u/10639145?s=200&v=4") else { return }
        imageView.load(url: url)
        imageView.cornerRadius(radius: 28)
    }
    
    // MARK: - View Setup -
    
    private func setup() {
        setupView()
        setupHierarchy()
        setupConstraints()
    }
    
    private func setupView() {
        title = "UIImageView from url"
        view.backgroundColor = .gray
    }
    
    private func setupHierarchy() {
        view.addSubview(imageView)
    }
    
    private func setupConstraints() {
        imageView.snp.makeConstraints { make in
            make.top.leading.equalTo(view.safeAreaLayoutGuide).inset(16)
            make.trailing.lessThanOrEqualToSuperview().inset(16)
        }
    }
}
