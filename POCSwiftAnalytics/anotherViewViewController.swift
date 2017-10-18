//
//  anotherViewViewController.swift
//  POCSwiftAnalytics
//
//  Created by Sybrand Lubbe on 2017/10/18.
//  Copyright © 2017 Sybrand Lubbe. All rights reserved.
//

import UIKit

class anotherViewViewController: UIViewController {

    @IBOutlet weak var uiTextField: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let toolBar = UIToolbar()
        toolBar.sizeToFit()
        
        let doneButton =  UIBarButtonItem(barButtonSystemItem:UIBarButtonSystemItem.done, target: self, action:#selector(self.doneClicked))
        
        toolBar.setItems([doneButton], animated: false)
        
        uiTextField.inputAccessoryView = toolBar

    }
    
    func doneClicked() {
        view.endEditing(true)
    }
    
}
