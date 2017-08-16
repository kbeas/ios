//: Playground - noun: a place where people can play

import UIKit

//Cadenas y strings

var numeroPerros = 5

var cadeneCaracteres:String = "Mi nombre es Juan y tengo \(numeroPerros)"

var cadenaCaracteres2:String = " perros"

//Concatenacion

var cadenaCaracteres3:String = cadeneCaracteres + cadenaCaracteres2

//Arreglos 

var array:[String] = ["Eggs", "Milk"]

var nombres = ["Jose", "Pedro", "Pablo", "Sergio", "Andres", "Manuel"]

print(nombres[0])

//Ciclos
var i = 0

//for i = 0; i < nombres.count; i+=1 {
//    print(nombres[i])
//}

//Diccionarios

var dicCadenas:[Int:String] = [1:"Uno", 2:"Dos", 3:"Tres", 4:"Cuatro"]

var dicNumeros:[Int:Int] = [1:5, 2:10, 3:24, 4:12]

var dicCadenaTipificada:[String:String] = ["Cinco":"5", "Seis": "6", "Siete": "7"]

var coworkers: [Int:String] = [1: "Sergio", 2: "Saul", 3: "Paul", 4: "Perrita", 5: "Fernando", 6: "Alex", 7: "Adolfo"]

let pelicula:(pelicula:String, año:Double, rank:Int) = ("Tomorrowland", 2015, 9)
let peliculaInferida = ("Tomorrowland", 2015, 9)
let movie:(pelicula:String, año:Double, rank:Int) = ("Tomorrowland", 2015, 9)

