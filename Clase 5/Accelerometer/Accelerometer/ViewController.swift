//
//  ViewController.swift
//  Accelerometer
//
//  Created by Karlo Beas on 8/18/17.
//  Copyright © 2017 Karlo Beas. All rights reserved.
//

import UIKit
import CoreMotion

class ViewController: UIViewController {
    
    lazy var motionManager = CMMotionManager()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        if motionManager.isAccelerometerAvailable{
            _ = OperationQueue()
            motionManager.startAccelerometerUpdates(to: OperationQueue.main) {
                (data: CMAccelerometerData?, error: Error?) in
                print("X = \(String(describing: data?.acceleration.x))")
                print("Y = \(String(describing: data?.acceleration.y))")
                print("Z = \(String(describing: data?.acceleration.z))")
            }
        } else {
            print("No hay acelerometro")
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

