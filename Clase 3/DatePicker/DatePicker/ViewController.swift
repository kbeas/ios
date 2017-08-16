//
//  ViewController.swift
//  DatePicker
//
//  Created by Karlo Beas on 8/16/17.
//  Copyright © 2017 Karlo Beas. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var dataLabel: UILabel!
    @IBOutlet weak var dataPicker: UIDatePicker!
    
    @IBAction func datePickerChanged(_sender: Any) {
        let dateFormatter = DateFormatter()
        
        dateFormatter.dateStyle = DateFormatter.Style.short
        dateFormatter.timeStyle = DateFormatter.Style.short
        
        let strDate = dateFormatter.string(from:dataPicker.date)
        dataLabel.text = strDate
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

