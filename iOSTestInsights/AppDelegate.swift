//
//  AppDelegate.swift
//  iOSTestInsights
//
//  Created by Digital-MacbookPro on 6/21/2559 BE.
//  Copyright © 2559 Digital-MacbookPro. All rights reserved.
//

import UIKit
import ApplicationInsights

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    
    func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: [NSObject: AnyObject]?) -> Bool {
        // Override point for customization after application launch.
     //   MSAIApplicationInsights.sharedInstance().setup();
     //   MSAIApplicationInsights.setupWithInstrumentationKey("uvcuf54vp1cw7620o4sigjge2wxzusfpanfcm0dt")
        MSAIApplicationInsights.setupWithInstrumentationKey("0ae0f162-a360-4316-ac48-77e6b7daecc9")
        MSAIApplicationInsights.sharedInstance().start();
        
        MSAITelemetryManager.trackPageView("ViewController",
                                           duration:0.2,
                                           properties:["ID = 1":4.8])
        
        MSAITelemetryManager.trackPageView("SecondViewController",
                                           duration:0.2,
                                           properties:["ID = 2":4.8])
       
        MSAIApplicationInsights.sharedInstance().setUserWithConfigurationBlock(<#T##userConfigurationBlock: (MSAIUser) -> Void##(MSAIUser) -> Void#>)
        MSAITelemetryManager.trackMetricWithName("Test metric", value:42.2)
        return true
    }

    func applicationWillResignActive(application: UIApplication) {
        // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
        // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
    }

    func applicationDidEnterBackground(application: UIApplication) {
        // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
        // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
    }

    func applicationWillEnterForeground(application: UIApplication) {
        // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
    }

    func applicationDidBecomeActive(application: UIApplication) {
        // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
    }

    func applicationWillTerminate(application: UIApplication) {
        // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
    }


}

