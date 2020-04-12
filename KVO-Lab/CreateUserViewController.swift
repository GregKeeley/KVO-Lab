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
    
    private var users = [User]()
    
    private var userObservation: NSKeyValueObservation?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    //TODO: this belongs in the tableview, to oberserve the balance of the user, along with the userObservation
    private func setupUserObserver() {
        userObservation = User.shared.observe(\.balance, options: [.new], changeHandler: { [weak self] (balance, change) in
            guard let newBalance = change.newValue else { return }
        })
    }
    @IBAction func createUserButtonPressed(_ sender: UIButton) {
        guard let userName = usernameTextField.text,
            let balance = balanceTextField.text
        else { return }
        let user = User.init()
        user.balance = balance
        user.userName = userName
        users.append(user)
    }
    
}

