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
        
        let image = UIImage(named: "closewhite") as UIImage?
        let button = UIButton(type: UIButtonType.custom) as UIButton
        button.frame = CGRect(x: 8, y: 8, width: 60, height: 60)
        button.setImage(image, for: .normal)
        button.addTarget(self, action: #selector(btnTouched), for: .touchUpInside)
        self.view.addSubview(button)
        
        //TrackingHelper.trackEvent(actionName: "Log In", contextData: ["n.loggedin": "1", "n.userkey": "123456"])
        TrackingHelper.trackScreenView(screenName: "Home", contextData: [:])
        TrackingHelper.trackEvent(actionName: "ClosedStart", contextData: [:])

    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        UIApplication.shared.statusBarStyle = .lightContent
        self.navigationController?.setNavigationBarHidden(true, animated: animated)
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        self.navigationController?.setNavigationBarHidden(true, animated: animated)
    }
    
    func btnTouched () {
        self.dismiss(animated: true, completion: nil)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

