//
//  TrackingHelper.swift
//  POCSwiftAnalytics
//
//  Created by Richard Klugman on 10/12/17.
//  Copyright © 2017 Sybrand Lubbe. All rights reserved.
//

import Foundation

class TrackingHelper {
    
    static func trackScreenView (screenName: String, contextData: [String: String]) {
        ADBMobile.trackState(screenName, data: contextData);
    }
    
    static func trackEvent (actionName: String, contextData: [String: String]) {
        ADBMobile.trackAction(actionName, data: contextData);
    }
}
