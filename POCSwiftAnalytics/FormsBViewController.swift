//
//  FormsBViewController.swift
//  POCSwiftAnalytics
//
//  Created by Sybrand Lubbe on 2017/10/09.
//  Copyright © 2017 Sybrand Lubbe. All rights reserved.
//

import UIKit

class FormsBViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.title = "Forms Data"
        //This is where you add the analytics code:

        /*
        ADBMobile.trackState("PageName", data: [
            "ButtonName": title!
            ])
        ADBMobile.trackTimedActionStart("PageName", data: nil)
          */         
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

   

}
