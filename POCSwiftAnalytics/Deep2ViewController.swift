//
//  Deep2ViewController.swift
//  POCSwiftAnalytics
//
//  Created by Sybrand Lubbe on 2017/10/09.
//  Copyright © 2017 Sybrand Lubbe. All rights reserved.
//

import UIKit

class Deep2ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.title = "Links"
        
        TrackingHelper.trackScreenView(screenName: "Deep Link 2", contextData: [:])
        TrackingHelper.trackEvent(actionName: "closeScreen", contextData: [:])
        
        let screenSize = UIScreen.main.bounds
        let screenWidth = screenSize.width
        let screenHeight = screenSize.height
        
        let button = UIButton(frame: CGRect(x: 0, y: screenHeight - 60, width: screenWidth, height: 60))
        button.setTitle("Close Screen", for: .normal)
        button.backgroundColor = UIColor(red: 0.0/255, green: 99.0/255, blue: 65.0/255, alpha: 1.0)
        button.setTitleColor(UIColor.white, for: .normal)
        //make the buttons content appear in the top-left
        button.contentHorizontalAlignment = .right
        button.contentVerticalAlignment = .center
        
        //move text 10 pixels down and right
        button.titleEdgeInsets = UIEdgeInsetsMake(10.0, 10.0, 10.0, 10.0)
        
        button.addTarget(self, action: #selector(pressButton(button:)), for: .touchUpInside)
        self.view.addSubview(button)
        
        let logButton : UIBarButtonItem = UIBarButtonItem(title: "Close", style: UIBarButtonItemStyle.done, target: self, action: #selector(Deep1ViewController.closeMyScreen))
        self.navigationItem.rightBarButtonItem = logButton
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //@IBAction func pressButton(_ sender: UIButton) {
    @objc func pressButton(button: UIButton) {
        // create the alert
        // create the alert
        let alert = UIAlertController(title: "You are about to leave", message: "Are you sure you would like to close this screen?", preferredStyle: UIAlertControllerStyle.alert)
        
        // add the actions (buttons)
        /*alert.addAction(UIAlertAction(title: "Yes", style: UIAlertActionStyle.default, handler: {
         (alertAction: UIAlertAction!) in
         self.dismiss(animated: true, completion: nil)
         }))*/
        
        alert.addAction(UIAlertAction(title: "Yes", style: UIAlertActionStyle.default, handler: {action in self.closeMyScreen()}))
        alert.addAction(UIAlertAction(title: "No", style: UIAlertActionStyle.cancel, handler: nil))
        
        // show the alert
        self.present(alert, animated: true, completion: nil)
    }
    
    
    func closeMyScreen () {
        self.dismiss(animated: true, completion: nil)
    }
    
    /*
     @objc func pressButton(button: UIButton) {
     
     let alert = UIAlertController(title: "Alert", message: "Message", preferredStyle: UIAlertControllerStyle.alert)
     alert.addAction(UIAlertAction(title: "Click", style: UIAlertActionStyle.default, handler: nil))
     self.present(alert, animated: true, completion: nil)
     
     
     self.dismiss(animated: true, completion: nil)
     }
     */

}
