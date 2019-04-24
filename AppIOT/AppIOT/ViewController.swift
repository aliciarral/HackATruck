//
//  ViewController.swift
//  AppIOT
//
//  Created by Bruno Corte on 14/07/17.
//  Copyright © 2017 Felipe Corte. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var labelCloudant: UILabel!
    
    
    @IBAction func botao(_ sender: Any) {
        
        EstacionamentoDAO.getEstacionamentos { (estacionamento) in
            self.labelCloudant.text = String(describing: estacionamento.carro[1].modelo)
        }
        
    }
    
    func mudaLabel (){
        
        
       
    }
}




