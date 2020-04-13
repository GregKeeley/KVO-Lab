//
//  ViewController.swift
//  KVO-Lab
//
//  Created by Gregory Keeley on 4/8/20.
//  Copyright © 2020 Gregory Keeley. All rights reserved.
//

import UIKit

class CreateUserViewController: UIViewController {
    @IBOutlet weak var usernameTextField: UITextField!
    @IBOutlet weak var balanceTextField: UITextField!
    
    private var users = User()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    @IBAction func createUserButtonPressed(_ sender: UIButton) {
        guard let userName = usernameTextField.text,
            let balance = balanceTextField.text
        else { return }
        let user = User.init()
        user.balance = balance
        user.userName = userName
        users.users.append(user)
        dump(users.users)
    }
    
}

