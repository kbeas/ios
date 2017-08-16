//
//  ViewController.swift
//  SegmentControl
//
//  Created by Karlo Beas on 8/16/17.
//  Copyright © 2017 Karlo Beas. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var textLabel: UILabel!
    @IBOutlet weak var segmentedControl: UISegmentedControl!
    
    
    @IBAction func indexChanged(_ sender: AnyObject) {
        switch segmentedControl.selectedSegmentIndex
        {
        case 0:
            textLabel.text = "First Segment Selected"
        
        case 1:
            textLabel.text = "Second Segment Selected"
        default:
            break
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        segmentedControl.selectedSegmentIndex = -1
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

