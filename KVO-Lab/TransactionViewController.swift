//
//  TransactionViewController.swift
//  KVO-Lab
//
//  Created by Gregory Keeley on 4/8/20.
//  Copyright © 2020 Gregory Keeley. All rights reserved.
//

import UIKit

class TransactionViewController: UIViewController {

    @IBOutlet weak var pickerView: UIPickerView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        pickerView.delegate = self
        pickerView.dataSource = self
    }
    

}
extension TransactionViewController: UIPickerViewDataSource {
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return 10
    }
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
}
extension TransactionViewController: UIPickerViewDelegate {
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return "user"
    }
}
