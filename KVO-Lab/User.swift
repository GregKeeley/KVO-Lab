//
//  User.swift
//  KVO-Lab
//
//  Created by Gregory Keeley on 4/8/20.
//  Copyright © 2020 Gregory Keeley. All rights reserved.
//

import Foundation

@objc class User: NSObject {
//    static var shared = User()
    @objc dynamic var userName: String
    @objc dynamic var balance: Int
    
    init(userName: String, balance: Int) {
        self.userName = userName
        self.balance = balance
    }
}

//@objc class Users: NSObject {
//    @objc dynamic var users = [User].self
//    init(users: [User]) {
//        self.users = users
//    }
//}

