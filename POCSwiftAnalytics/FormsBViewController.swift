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

        // To be placed in a function that handles the previous form completion
        TrackingHelper.trackEvent(actionName: "Form Completed", contextData: ["n.formsubmitted": "1", "n.formname": "Form A"])
        
        
        TrackingHelper.trackScreenView(screenName: "Form B", contextData: [:])
        
        // To be placed in a function which handles the first input on a form
        TrackingHelper.trackEvent(actionName: "Form Started", contextData: ["n.formstarted": "1", "n.formname": "Form B"])
        
        // To be placed in a function that handles the previous form completion
        TrackingHelper.trackEvent(actionName: "Form Completed", contextData: ["n.formsubmitted": "1", "n.formname": "Form B"])


        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

   

}
