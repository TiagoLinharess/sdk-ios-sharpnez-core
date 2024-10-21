//
//  TimeInterval.Builder.swift
//  SharpnezCore
//
//  Created by Tiago Linhares on 21/10/24.
//

import SharpnezCore
import SnapKit

extension Features.TimeInterval {
    final class ViewController: UIViewController {
        // MARK: - Properties -
        
        private lazy var textField: UITextField = {
            let textField = UITextField()
            textField.placeholder = "Enter a the time interval"
            textField.borderStyle = .roundedRect
            textField.keyboardType = .numberPad
            return textField
        }()
        
        private lazy var button: UIButton = {
            let action = UIAction(title: "Format", state: .on) { [weak self] _ in
                self?.formattedDateTapped()
            }
            let button = UIButton()
            button.setTitle("Format", for: .normal)
            button.setTitleColor(.label, for: .normal)
            button.backgroundColor = .systemGray5
            button.addAction(action, for: .touchUpInside)
            return button
        }()
  
        private lazy var label: UILabel = UILabel()
    }
}

extension Features.TimeInterval.ViewController {
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
    }
    
    private func setupHierarchy() {
        view.addSubview(textField)
        view.addSubview(button)
        view.addSubview(label)
    }
    
    private func setupConstraints() {
        textField.snp.makeConstraints { make in
            make.top.equalTo(view.safeAreaLayoutGuide.snp.top)
            make.horizontalEdges.equalTo(view.safeAreaLayoutGuide.snp.horizontalEdges)
                .inset(16)
        }
        
        button.snp.makeConstraints { make in
            make.top.equalTo(textField.snp.bottom)
                .offset(16)
            make.horizontalEdges.equalTo(view.safeAreaLayoutGuide.snp.horizontalEdges)
                .inset(16)
        }
        
        label.snp.makeConstraints { make in
            make.top.equalTo(button.snp.bottom)
                .offset(16)
            make.horizontalEdges.equalTo(view.safeAreaLayoutGuide.snp.horizontalEdges)
                .inset(16)
        }
    }
    
    // MARK: - Action -
    
    private func formattedDateTapped() {
        guard let text = textField.text,
              let number = Double(text)
        else {
            label.text = "Number not valid"
            return
        }
        
        label.text = String(TimeInterval(floatLiteral: number).getMinutes())
    }
}


