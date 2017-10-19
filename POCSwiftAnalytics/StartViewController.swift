//
//  StartViewController.swift
//  POCSwiftAnalytics
//
//  Created by Sybrand Lubbe on 2017/10/19.
//  Copyright © 2017 Sybrand Lubbe. All rights reserved.
//

import UIKit

class StartViewController: UIViewController, UIScrollViewDelegate {

    @IBOutlet weak var StartView: UIScrollView!
    @IBOutlet weak var viewpagecontrol: UIPageControl!
    
    let view1 = ["logoImage":"logoset","txtlabel":"Welcome to the Nedbank and Adobe Analytics POC."]
    let view2 = ["logoImage":"logoset","txtlabel":"This is to see how Adobe Analytics work"]
    let view3 = ["logoImage":"logoset","txtlabel":"Let us make analytic data"]
    
    var viewArray = [Dictionary<String,String>]()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        viewArray = [view1,view2,view3]
        StartView.isPagingEnabled = true
        StartView.contentSize = CGSize(width: self.view.bounds.width * CGFloat(viewArray.count), height: self.view.bounds.height)
        StartView.showsHorizontalScrollIndicator = false
        
        StartView.delegate = self
        
        loadviews()
        
    }
    
    func loadviews() {
        for (index, view) in viewArray.enumerated() {
            if let startview = Bundle.main.loadNibNamed("StartView", owner: self, options: nil)?.first as? StartView {
                startview.LogoImage.image = UIImage(named: view1["logoImage"]!)
                startview.labelTxt.text = view["txtlabel"]

                StartView.addSubview(startview)
                startview.frame.size.width = self.view.bounds.size.width
                startview.frame.origin.x = CGFloat(index) * self.view.bounds.size.width
        }
    }
  }
    
    func scrollViewDidEndDecelerating(_ scrollView: UIScrollView) {
        let page = scrollView.contentOffset.x / scrollView.frame.size.width
        viewpagecontrol.currentPage = Int(page)
    }

    
}
