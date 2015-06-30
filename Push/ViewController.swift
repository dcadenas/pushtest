//
//  ViewController.swift
//  Push
//
//  Created by Daniel Cadenas on 6/20/15.
//  Copyright (c) 2015 Crafted. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        createButton()
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    func createButton () {
        let button = UIButton();
        button.setTitle("Request Push Notification Token", forState: .Normal)
        button.setTitleColor(UIColor.blueColor(), forState: .Normal)
        button.frame = self.view.frame
        button.addTarget(self, action: "buttonPressed:", forControlEvents: .TouchUpInside)
        
        self.view.addSubview(button)
    }
    func buttonPressed(sender: UIButton!) {
        
        let types = UIUserNotificationSettings(forTypes: UIUserNotificationType.Alert | UIUserNotificationType.Badge | UIUserNotificationType.Sound, categories: nil)
        UIApplication.sharedApplication().registerUserNotificationSettings(types)
        UIApplication.sharedApplication().registerForRemoteNotifications()
    }
}

