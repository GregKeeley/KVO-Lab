//
//  User.swift
//  KVO-Lab
//
//  Created by Gregory Keeley on 4/8/20.
//  Copyright © 2020 Gregory Keeley. All rights reserved.
//

import Foundation

@objc class User: NSObject {
    static var shared = User()
    @objc dynamic var userName: String
    @objc dynamic var balance: String
    @objc dynamic var users: [User]
    override init() {
        userName = ""
        balance = "0"
        users = []
    }
    
//    init(userName: String, balance: String) {
//        self.userName = userName
//        self.balance = balance
//    }
}



