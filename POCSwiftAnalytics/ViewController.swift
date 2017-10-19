//
//  ViewController.swift
//  POCSwiftAnalytics
//
//  Created by Sybrand Lubbe on 2017/10/09.
//  Copyright © 2017 Sybrand Lubbe. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
   

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.title = "Analytics"
        
        
        
        TrackingHelper.trackEvent(actionName: "Log In", contextData: ["n.loggedin": "1", "n.userkey": "123456"])
        TrackingHelper.trackScreenView(screenName: "Home", contextData: [:])
        

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

