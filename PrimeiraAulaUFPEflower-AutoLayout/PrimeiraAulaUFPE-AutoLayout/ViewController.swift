//
//  ViewController.swift
//  PrimeiraAulaUFPE-AutoLayout
//
//  Created by student on 04/04/19.
//  Copyright © 2019 alicia lima. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var Inserir_Texto: UITextField!
    @IBOutlet weak var Inserir_Sobrenome: UITextField!
    @IBOutlet weak var Inserir_Idade: UITextField!
    @IBOutlet weak var Resultado: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func Clicar_botao(_ sender: Any) {
    
    let nome = Inserir_Texto.text
    let sobrenome = Inserir_Sobrenome.text
    let idade = Inserir_Idade.text
        
    Resultado.text = "O meu nome completo é \(nome!) \(sobrenome!) e minha idade é \(idade!)"
        
    Inserir_Texto.text = ""
    Inserir_Sobrenome.text = ""
    Inserir_Idade.text = ""
    
    
    }
}

