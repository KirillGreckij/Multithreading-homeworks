//
//  TabBarController.swift
//  Multithreading-homeworks
//
//  Created by Кирилл Грецкий on 10.03.2023.
//

import UIKit

class TabBarController: UITabBarController {
    let firstTabVC = UINavigationController(rootViewController: FeedViewController())
    let secondTabVC = UINavigationController(rootViewController: LogInViewController())
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
    }
    func setupUI(){
        self.viewControllers = [firstTabVC, secondTabVC]
        
        let item1 = UITabBarItem(title: "Feed",
                                 image: UIImage(systemName: "doc"), tag: 0)
        
        let item2 = UITabBarItem(title: "Profile",
                                 image:  UIImage(systemName: "brain.head.profile"), tag: 1)
        
        firstTabVC.tabBarItem = item1
        secondTabVC.tabBarItem = item2
        
        UITabBar.appearance().tintColor = .systemBlue//UIColor(red: 0/255.0, green: 146/255.0, blue: 248/255.0, alpha: 1.0)
        UITabBar.appearance().backgroundColor = .systemGray
    }
}
