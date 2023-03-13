//
//  User.swift
//  Multithreading-homeworks
//
//  Created by Кирилл Грецкий on 13.03.2023.
//

import UIKit

protocol UserService {
    func authorization(login: String) -> User?
}

class User {
    var login: String
    var fullName: String
    var avatar: UIImage?
    var status: String
    
    init(login: String, fullName: String, avatar: UIImage, status: String) {
        self.login = login
        self.fullName = fullName
        self.avatar = avatar
        self.status = status
    }
}

class CurrentUserService: UserService {
   
    var user = User(login: "Kirill", fullName: "Миньон", avatar: UIImage(named: "kartinka")!, status: "Онлайн")
    
    func authorization(login: String) -> User? {
        if login == user.login {return user}
        return nil
    }
}

class TestUserService: UserService {
    
    var testUser = User(login: "test", fullName: "test", avatar: UIImage(named: "1")!, status: "test")
    
    func authorization(login: String) -> User? {
        if login == testUser.login {return testUser}
        return nil
    }
}
