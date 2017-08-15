//
//  ViewController.swift
//  Auto
//
//  Created by Karlo Beas on 8/14/17.
//  Copyright © 2017 Karlo Beas. All rights reserved.
//

import UIKit
import GoogleMaps

class ViewController: UIViewController {
    
    @IBOutlet weak var marca: UILabel!
    @IBOutlet weak var imagen: UIImageView!
    
    @IBAction func changeMarca(_ sender: Any) {
        marca.text = "Meche Benz"
    }
    
    @IBAction func changeImagen(_ sender: Any) {
        if imagen.isHidden == true {
            imagen.isHidden = false
        } else {
            imagen.isHidden = true
        }
    }
    
    override func loadView() {
        let camera = GMSCameraPosition.camera(withLatitude: 1.285, longitude: 103.848, zoom: 12)
        let mapView = GMSMapView.map(withFrame: .zero, camera: camera)
        self.view = mapView
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

