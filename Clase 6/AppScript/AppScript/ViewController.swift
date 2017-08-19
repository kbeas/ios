//
//  ViewController.swift
//  AppScript
//
//  Created by Karlo Beas on 8/19/17.
//  Copyright © 2017 Karlo Beas. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var webView: UIWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let localfilepath = Bundle.main.url(forResource: "particulas", withExtension: "html")
        let myRequest = URLRequest(url: localfilepath!)
        webView.loadRequest(myRequest)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

