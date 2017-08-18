//
//  View2Controller.swift
//  AppCicloDeVida
//
//  Created by Karlo Beas on 8/17/17.
//  Copyright © 2017 Karlo Beas. All rights reserved.
//

import UIKit

class View2Controller: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        print("Se activo la func viewDidLoad 2")
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
        print("Se activo la func didReceiveMemoryWarning 2")
    }
    
    override func loadView() {
        super.loadView()
        print("Se activo la func loadView 2")
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
        print("Se activo la func viewWillAppear 2")
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(true)
        print("Se activo la func viewDidAppear 2")
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillAppear(true)
        print("Se activo la func viewWillDissapear 2")
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(true)
        print("Se activo la func viewDidDisappear 2")
    }
}
