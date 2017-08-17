//
//  CalcViewController.swift
//  AppUnion
//
//  Created by Karlo Beas on 8/17/17.
//  Copyright © 2017 Karlo Beas. All rights reserved.
//

import UIKit

class CalcViewController: UIViewController {
    @IBOutlet weak var numeroUno: UITextField!
    @IBOutlet weak var numeroDos: UITextField!
    @IBOutlet weak var resultado: UITextField!
    
    @IBAction func suma(_ sender: Any) {
        print("se realizo suma")
        
        let textfieldInt: Float? = Float(numeroUno.text!)
        let textfield2Int: Float? = Float(numeroDos.text!)
        let convert = textfieldInt! + textfield2Int!
        let convertText = String(convert)
        resultado.text = convertText
    }
    
    @IBAction func resta(_ sender: Any) {
        print("se realizo resta")
        
        let textfieldInt: Float? = Float(numeroUno.text!)
        let textfield2Int: Float? = Float(numeroDos.text!)
        let convert = textfieldInt! - textfield2Int!
        let convertText = String(convert)
        resultado.text = convertText
    }
    
    @IBAction func multiplicacion(_ sender: Any) {
        print("se realizo multiplicacion")
        
        let textfieldInt: Float? = Float(numeroUno.text!)
        let textfield2Int: Float? = Float(numeroDos.text!)
        let convert = textfieldInt! * textfield2Int!
        let convertText = String(convert)
        resultado.text = convertText
    }
    
    @IBAction func division(_ sender: Any) {
        print("se realizo division")
        
        let textfieldInt: Float? = Float(numeroUno.text!)
        let textfield2Int: Float? = Float(numeroDos.text!)
        let convert = textfieldInt! / textfield2Int!
        let convertText = String(convert)
        resultado.text = convertText
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
