//
//  ThirdViewController.swift
//  App2MenuUniversal
//
//  Created by Karlo Beas on 8/15/17.
//  Copyright © 2017 Karlo Beas. All rights reserved.
//

import UIKit

class ThirdViewController: UIViewController {

    @IBAction func alerta(_ sender: Any) {
        let alert = UIAlertController(title: "Curso iOS", message: "Caliente", preferredStyle:UIAlertControllerStyle.alert)
        alert.addAction(UIAlertAction(title: "Aceptar", style: UIAlertActionStyle.default, handler: nil))
        self.present(alert, animated: true, completion: nil)
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
