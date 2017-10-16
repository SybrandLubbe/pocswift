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

        TrackingHelper.trackScreenView(screenName: "Form A", contextData: [:])
        
        // To be placed in a function which handles the first input on a form
        TrackingHelper.trackEvent(actionName: "Form Started", contextData: ["n.formstarted": "1", "n.formname": "Form A"])
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    


}
