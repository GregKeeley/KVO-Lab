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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    @IBAction func createUserButtonPressed(_ sender: UIButton) {
        guard let userName = usernameTextField.text,
            let balance = balanceTextField.text
        else { return }
        let user = User(userName: userName, balance: balance, users: <#T##[User]#>)
    }
    
}

