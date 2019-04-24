//
//  AzulViewController.swift
//  StoryBoardAula
//
//  Created by student on 10/04/19.
//  Copyright © 2019 Hta. All rights reserved.
//

import UIKit

class AzulViewController: UIViewController {

    @IBOutlet weak var colorTextField: UITextField!
    
    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
   
    
    //não se pode acessar outlet de outra classe que não seja a declarada pois corre o risco da classe e os componentes ainda não terem sido desenhados
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "novaCorIdentifier"{ //novaCorIdentifier é a identificacão do caminho (segue) para a tela Nova
        //se o caminho for para a tela certa
            
            if let novaView = segue.destination as? NovaViewController{ //novaView é uma varävel do tipo NovaViewController (que é uma classe)
                
                
                //novaView.corLabel.text = colorTextField.text
                novaView.cor = colorTextField.text 
            
            }
        
        
        }
        
        
        
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }


}
