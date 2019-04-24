//
//  ViewController.swift
//  Calculadora
//
//  Created by student on 04/04/19.
//  Copyright © 2019 alicia lima. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var Insere_Peso: UITextField!
    @IBOutlet weak var Insere_Altura: UITextField!
    @IBOutlet weak var Resultado: UITextView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
   
    @IBAction func Calculo(_ sender: Any) {
        
        let peso = Insere_Peso.text
        let altura = Insere_Altura.text
        let imc = Double(peso!)! / pow (Double(altura!)!, 2.0)
        
        Resultado.text = "O seu IMC é \(String(format: "%.2f",imc))!"
        
        Insere_Peso.text = ""
        Insere_Altura.text = ""
        
        
    }


}

