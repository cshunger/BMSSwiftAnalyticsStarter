//
//  ViewController.swift
//  AnalyticsTest
//
//  Created by Chevy Hungerford on 8/16/16.
//  Copyright © 2016 Chevy Hungerford. All rights reserved.
//

import UIKit
import BMSCore
import BMSAnalytics

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func send(sender: UIButton) {
        Analytics.send();
        
    }

    @IBAction func Register(sender: UIButton) {
        // Make sure that your region is correct
        // BMSClient.REGION_US_SOUTH
        // BMSClient.REGION_UK
        // BMSClient.REGION_SYDNEY
        BMSClient.sharedInstance.initializeWithBluemixAppRoute(nil, bluemixAppGUID: nil, bluemixRegion: BMSClient.REGION_US_SOUTH)
        
        //Change the app name and the api key
        Analytics.initializeWithAppName("App Name", apiKey: "your api key", deviceEvents: DeviceEvent.LIFECYCLE)
    }
    
    @IBAction func crashApp(sender: UIButton) {
        var i = 10;
        while i > -1 {
            print(10/i)
            i -= 1
        }
    }


}

