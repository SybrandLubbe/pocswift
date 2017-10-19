//
//  WebViewController.swift
//  POCSwiftAnalytics
//
//  Created by Sybrand Lubbe on 2017/10/09.
//  Copyright © 2017 Sybrand Lubbe. All rights reserved.
//

import UIKit
import WebKit

class WebViewController: UIViewController {
    
        var webView: WKWebView?
        
        override func viewDidLoad() {
            super.viewDidLoad()
            self.title = "A Website View"
            
            TrackingHelper.trackScreenView(screenName: "Website View", contextData: [:])
            
            // init webView
            webView = WKWebView(frame: view.bounds)
            view.addSubview(webView!)
        }
        
        override func viewWillAppear(_ animated: Bool) {
            super.viewWillAppear(animated)
            // load url
            webView?.loadUrl(string: "https://www.nedbank.co.za")
            UIApplication.shared.statusBarStyle = .default
            self.navigationController?.setNavigationBarHidden(false, animated: animated)
        }
    
    
    }
    
    extension WKWebView {
        func loadUrl(string: String) {
            if let url = URL(string: string) {
                load(URLRequest(url: url))
            }
        }
    }



