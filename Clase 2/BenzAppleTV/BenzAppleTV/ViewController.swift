//
//  ViewController.swift
//  BenzAppleTV
//
//  Created by Karlo Beas on 8/15/17.
//  Copyright © 2017 Karlo Beas. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var marca: UILabel!
    
    @IBOutlet weak var imagen: UIImageView!
    
    @IBOutlet weak var color: UILabel!
    
    @IBAction func changeMarcha(_ sender: Any) {
        marca.text = "Meche Benz"
    }
    
    @IBAction func changeColor(_ sender: Any) {
        color.textColor = UIColor.blue
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
        imagen.image = #imageLiteral(resourceName: "download.jpeg")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

