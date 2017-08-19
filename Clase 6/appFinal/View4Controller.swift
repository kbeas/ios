//
//  View4Controller.swift
//  AppScript
//
//  Created by Karlo Beas on 8/19/17.
//  Copyright © 2017 Karlo Beas. All rights reserved.
//

import UIKit
import UserNotifications

class View4Controller: UIViewController {

    @IBAction func sendNotification(_ sender: AnyObject) {
        let content = UNMutableNotificationContent()
        content.title = "Notification"
        content.subtitle = "From Caliente"
        content.body = "Notifications"
        
        let imageName = "appleLogo"
        
        let  imageURL = Bundle.main.url(forResource: imageName, withExtension: "png")
        
        let attachment = try! UNNotificationAttachment(identifier: imageName, url: imageURL!, options: .none)
        
        content.attachments = [attachment]
        
        let trigger = UNTimeIntervalNotificationTrigger(timeInterval: 5, repeats: false)
        let request = UNNotificationRequest(identifier: "notification.id.01", content: content, trigger: trigger)
        
        UNUserNotificationCenter.current().add(request, withCompletionHandler:  nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        UNUserNotificationCenter.current().requestAuthorization(options: [.alert]) {
            (success, error) in
            if success {
                print("success")
            } else {
                print("error")
            }
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}
