//
//  Vista2.swift
//  Auto
//
//  Created by Karlo Beas on 8/14/17.
//  Copyright © 2017 Karlo Beas. All rights reserved.
//

import UIKit

class Vista2: UIViewController {
    
    
    @IBOutlet weak var color: UILabel!
    
    @IBAction func changeColor(_ sender: Any) {
        color.textColor = UIColor.green
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}