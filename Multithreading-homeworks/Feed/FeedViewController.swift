//
//  FeedViewController.swift
//  Multithreading-homeworks
//
//  Created by Кирилл Грецкий on 10.03.2023.
//

import UIKit

class FeedViewController: UIViewController {
    
    private var firstButton: UIButton = {
        let firstButton = UIButton()
        firstButton.translatesAutoresizingMaskIntoConstraints = false
        firstButton.backgroundColor = .red
        firstButton.setTitle("First button", for: .normal)
        firstButton.layer.cornerRadius = 10
        return firstButton
    }()
    
    private var secondButton: UIButton = {
        let secondButton = UIButton()
        secondButton.translatesAutoresizingMaskIntoConstraints = false
        secondButton.setTitle("Second button", for: .normal)
        secondButton.backgroundColor = .systemBlue
        secondButton.layer.cornerRadius = 10
        return secondButton
    }()
    
    private var stackView: UIStackView = {
        let stackView = UIStackView()
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.axis = .vertical
        stackView.spacing = 20
        return stackView
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        navigationItem.title = "Feed"
        setupUI()
        secondButton.addTarget(self, action: #selector(tapButton), for: .touchUpInside)
        firstButton.addTarget(self, action: #selector(tapButton), for: .touchUpInside)
    }
    
    func setupUI(){
        view.addSubview(stackView)
        stackView.addArrangedSubview(firstButton)
        stackView.addArrangedSubview(secondButton)
        
        NSLayoutConstraint.activate([
            stackView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            stackView.centerYAnchor.constraint(equalTo: view.centerYAnchor),
        ])
    }
    
    @objc func tapButton(){
        let postVC = PostViewController()
        self.navigationController?.pushViewController(postVC, animated: true)
    }
}
