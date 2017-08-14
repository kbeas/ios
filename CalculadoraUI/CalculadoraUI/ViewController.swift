//
//  ViewController.swift
//  CalculadoraUI
//
//  Created by Karlo Beas on 8/14/17.
//
//

import UIKit

class ViewController: UIViewController {
    
    
    
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
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

