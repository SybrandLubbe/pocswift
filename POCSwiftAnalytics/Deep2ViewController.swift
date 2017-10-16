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
        //This is where you add the analytics code:
        
        TrackingHelper.trackScreenView(screenName: "Deep Link 2", contextData: [:])
        
        let screenSize = UIScreen.main.bounds
        let screenWidth = screenSize.width
        let screenHeight = screenSize.height
        
        let button = UIButton(frame: CGRect(x: 0, y: screenHeight - 60, width: screenWidth, height: 60))
        button.setTitle("Close Screen", for: .normal)
        button.backgroundColor = UIColor.white
        button.setTitleColor(UIColor.black, for: .normal)
        //make the buttons content appear in the top-left
        button.contentHorizontalAlignment = .right
        button.contentVerticalAlignment = .center
        
        //move text 10 pixels down and right
        button.titleEdgeInsets = UIEdgeInsetsMake(10.0, 10.0, 10.0, 10.0)
        
        button.addTarget(self, action: #selector(pressButton(button:)), for: .touchUpInside)
        self.view.addSubview(button)
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @objc func pressButton(button: UIButton) {
        self.dismiss(animated: true, completion: nil)
    }

}
