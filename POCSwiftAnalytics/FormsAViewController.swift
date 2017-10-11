//
//  FormsAViewController.swift
//  POCSwiftAnalytics
//
//  Created by Sybrand Lubbe on 2017/10/09.
//  Copyright © 2017 Sybrand Lubbe. All rights reserved.
//

import UIKit

class FormsAViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.title = "Forms"
        //This is where you add the analytics code:

        /*
        ADBMobile.trackState("PageName", data: [
            "FormName": title!
            ])
        ADBMobile.trackTimedActionStart("PageName", data: nil)
         */
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    


}
