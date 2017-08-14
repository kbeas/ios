//
//  ViewController.swift
//  Auto
//
//  Created by Karlo Beas on 8/14/17.
//  Copyright © 2017 Karlo Beas. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var marca: UILabel!
    @IBOutlet weak var color: UILabel!
    @IBOutlet weak var imagen: UIImageView!
    
    
    @IBAction func changeMarca(_ sender: Any) {
        marca.text = "Meche Benz"
    }
    
    
    @IBAction func changeColor(_ sender: Any) {
        color.textColor = UIColor.green
    }

    
    @IBAction func changeImagen(_ sender: Any) {
        if imagen.isHidden == true {
            imagen.isHidden = false
        } else {
            imagen.isHidden = true
        }
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

