//
//  FormsAViewController.swift
//  POCSwiftAnalytics
//
//  Created by Sybrand Lubbe on 2017/10/09.
//  Copyright © 2017 Sybrand Lubbe. All rights reserved.
//

import UIKit

class FormsAViewController: UIViewController {
    
  
    @IBOutlet weak var UsernameTxtField: UITextField!
    @IBOutlet weak var NameTxtField: UITextField!
    @IBOutlet weak var LastTxtField: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.hideKeyboard()
        
        self.title = "Forms"
        
        let toolBar = UIToolbar()
        toolBar.sizeToFit()
        
        let doneButton =  UIBarButtonItem(barButtonSystemItem:UIBarButtonSystemItem.done, target: self, action:#selector(self.doneClicked))
        
        toolBar.setItems([doneButton], animated: false)
        
        UsernameTxtField.inputAccessoryView = toolBar
        NameTxtField.inputAccessoryView = toolBar
        LastTxtField.inputAccessoryView = toolBar
        
        //self.view.endEditing(true)
        
        TrackingHelper.trackScreenView(screenName: "Form A", contextData: [:])
        // To be placed in a function which handles the first input on a form
        TrackingHelper.trackEvent(actionName: "Form Started", contextData: ["n.formstarted": "1", "n.formname": "Form A"])
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        UIApplication.shared.statusBarStyle = .default
        self.navigationController?.setNavigationBarHidden(false, animated: animated)
    }
    
    func doneClicked() {
        view.endEditing(true)
    }

}
