//
//  ViewController.swift
//  Sample
//
//  Created by Tiago Linhares on 19/10/24.
//

import SnapKit

extension Features.Home {
    final class ViewController: UIViewController {
        // MARK: - Properties -
        
        private let viewModel: ViewModelProtocol
        
        private lazy var tableView: UITableView = {
            let tableView = UITableView()
            tableView.delegate = self
            tableView.dataSource = self
            tableView.register(UITableViewCell.self, forCellReuseIdentifier: "Cell")
            tableView.backgroundColor = .clear
            return tableView
        }()
        
        // MARK: - Init -
        
        init(viewModel: ViewModelProtocol) {
            self.viewModel = viewModel
            super.init(nibName: nil, bundle: nil)
        }
        
        @available(*, unavailable)
        required init?(coder: NSCoder) { nil }
    }
}

extension Features.Home.ViewController {
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
        title = "Sharpnez Core"
        view.backgroundColor = .systemBackground
    }
    
    private func setupHierarchy() {
        view.addSubview(tableView)
    }
    
    private func setupConstraints() {
        tableView.snp.makeConstraints { make in
            make.edges.equalTo(view.safeAreaLayoutGuide)
        }
    }
}
    
extension Features.Home.ViewController: UITableViewDataSource, UITableViewDelegate {
    // MARK: - TableView -
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        viewModel.samples.count
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        let sample = viewModel.samples[indexPath.row]
        var content = cell.defaultContentConfiguration()
        
        content.text = sample.title
        cell.contentConfiguration = content
        cell.selectionStyle = .none
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        viewModel.didSelectSample(at: indexPath.row)
    }
}
