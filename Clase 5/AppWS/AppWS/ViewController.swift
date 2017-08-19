//
//  ViewController.swift
//  AppWS
//
//  Created by Karlo Beas on 8/18/17.
//  Copyright © 2017 Karlo Beas. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var webView: UIWebView!
    @IBOutlet weak var textField: UITextField!
    var palabra:String?
    
    @IBAction func buscar(_ sender: Any) {
        palabra = textField.text!
        
        var urlCompleto = "https://es.wikipedia.org/w/api.php?action=query&prop=extracts&format=json&exintro=&titles=\(palabra!)"
        
        urlCompleto = urlCompleto.addingPercentEncoding(withAllowedCharacters: NSCharacterSet.urlQueryAllowed)!
        
        let objectoUrl = URL(string:urlCompleto)
        
        let tarea = URLSession.shared.dataTask(with: objectoUrl!) {(datos, respuesta, error) in
            if error != nil {
                print(error!)
            } else {
                do {
                    let json = try JSONSerialization.jsonObject(with: datos!, options: JSONSerialization.ReadingOptions.mutableContainers) as! [String:Any]
                    
                    print(json)
                    
                    let querySubJson = json["query"] as! [String:Any]
                    
                    let pageSubjson = querySubJson["pages"] as! [String:Any]
                    
                    let pageSubjsonArray = Array(pageSubjson)
                    
                    let id = pageSubjsonArray[0].key
                    
                    let idSubJson = pageSubjson["\(id)"] as! [String:Any]
                    
                    let extractStringHtml = idSubJson["extract"] as! String
                    
                    DispatchQueue.main.sync(execute: {
                        self.webView.loadHTMLString(extractStringHtml, baseURL: nil)
                    })
                } catch {
                    print("El procesamiento del JSON tuvo un error")
                }
                
            }
        }
        
        tarea.resume()
        
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

