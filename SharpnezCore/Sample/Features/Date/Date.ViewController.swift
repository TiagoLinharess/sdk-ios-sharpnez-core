//
//  Date.ViewController.swift
//  SharpnezCore
//
//  Created by Tiago Linhares on 20/10/24.
//

import SharpnezCore
import SnapKit

extension Features.Date {
    final class ViewController: UIViewController {
        // MARK: - Properties -
        
        private lazy var dateLabel: UILabel = {
            let label = UILabel()
            label.text = "Normal Date: " + Date().description
            return label
        }()
        
        private lazy var formattedDateLabel: UILabel = {
            let label = UILabel()
            label.text = "Formatted Date: " + (Date().toString() ?? "Date not formatted")
            return label
        }()
    }
}

extension Features.Date.ViewController {
    // MARK: - View Life Cicle -

    override func viewDidLoad() {
        super.viewDidLoad()
        setup()
    }
    
    // MARK: - View Setup -
    
    private func setup() {
        setupView()
        setupHierarchy()
        setupConstraints()
    }
    
    private func setupView() {
        view.backgroundColor = .systemBackground
        title = "Date + Extensions"
    }
    
    private func setupHierarchy() {
        view.addSubview(dateLabel)
        view.addSubview(formattedDateLabel)
    }
    
    private func setupConstraints() {
        dateLabel.snp.makeConstraints { make in
            make.top.equalTo(view.safeAreaLayoutGuide.snp.top)
            make.horizontalEdges.equalTo(view.safeAreaLayoutGuide.snp.horizontalEdges)
                .inset(16)
        }
        
        formattedDateLabel.snp.makeConstraints { make in
            make.top.equalTo(dateLabel.snp.bottom)
                .offset(16)
            make.horizontalEdges.equalTo(view.safeAreaLayoutGuide.snp.horizontalEdges)
                .inset(16)
        }
    }
}
