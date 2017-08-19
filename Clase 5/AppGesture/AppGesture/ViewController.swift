//
//  ViewController.swift
//  AppGesture
//
//  Created by Karlo Beas on 8/18/17.
//  Copyright © 2017 Karlo Beas. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var user: UITextField!
    @IBOutlet weak var password: UITextField!
    
    
    @IBAction func cancel(_ sender: Any) {
        print("cancel")
    }
    
    
    @IBAction func ok(_ sender: Any) {
        print("ok")
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        self.hideKeyboardWhenTappingAround()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}


extension UIViewController {
    func hideKeyboardWhenTappingAround() {
        let tap: UITapGestureRecognizer = UITapGestureRecognizer (target: self, action: #selector(UIViewController.dismissKeyboard))
        view.addGestureRecognizer(tap)
    }
    
    func dismissKeyboard() {view.endEditing(true)}
}
