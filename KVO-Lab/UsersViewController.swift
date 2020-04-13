//
//  UsersViewController.swift
//  KVO-Lab
//
//  Created by Gregory Keeley on 4/8/20.
//  Copyright © 2020 Gregory Keeley. All rights reserved.
//

import UIKit

class UsersViewController: UIViewController {

    private var userObservation: NSKeyValueObservation?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUserObserver()
    }
    private func setupUserObserver() {
        userObservation = User.shared.observe(\.balance, options: [.new], changeHandler: { [weak self] (balance, change) in
            guard let newBalance = change.newValue else { return }
        })
    }

}
