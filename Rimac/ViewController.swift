//
//  ViewController.swift
//  Rimac
//
//  Created by Irwin Bravo Oporto on 14/04/23.
//

import UIKit
import Pagos
import FoundationRimac
import Alamofire

class ViewController: UIViewController {
    
    let validador = Validador()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        let email = "ejemplo@ejemplo.com"
        if EmailValidator.isValid(email: email) {
            print("El correo electrónico es válido")
        } else {
            print("El correo electrónico no es válido")
        }
        
        // Second Class
        if validador.esStringOInt(valor: "hola") {
            print("El valor es un String o un Int")
        } else {
            print("El valor no es un String ni un Int")
        }
    }
}

