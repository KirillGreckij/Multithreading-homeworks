//
//  InfoViewController.swift
//  Multithreading-homeworks
//
//  Created by Кирилл Грецкий on 10.03.2023.
//

import UIKit

class InfoViewController: UIViewController {
    private let button: UIButton = {
        let button = UIButton()
        button.setTitle("Show Alert", for: .normal)
        button.setTitleColor(UIColor.black, for: .normal)
        button.backgroundColor = .magenta
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        view.addSubview(button)
        addTarget()
        
        NSLayoutConstraint.activate([
            button.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            button.centerYAnchor.constraint(equalTo: view.centerYAnchor)
        ])
    }
    
    func addTarget(){
        button.addTarget(self, action: #selector(action), for: .touchUpInside)
    }
    
    @objc func action(){
        let alertController = UIAlertController(title: "ВНИМАНИЕ", message: "Нажми на любую кнопку", preferredStyle: .alert)
        let action = UIAlertAction(title: "OK", style: .default) {_ in
            print("first")
        }
        let secondAction = UIAlertAction(title: "cancel", style: .default) {_ in
            print("second")
        }
        alertController.addAction(action)
        alertController.addAction(secondAction)
        self.present(alertController, animated: true, completion: nil)
    }
}
