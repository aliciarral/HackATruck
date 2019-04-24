//
//  NovaViewController.swift
//  StoryBoardAula
//
//  Created by student on 10/04/19.
//  Copyright © 2019 Hta. All rights reserved.
//

import UIKit

class NovaViewController: UIViewController {

    @IBOutlet weak var corLabel: UILabel!
    
    var cor: String? //ahhh atributo dessa classe
    
    
    override func viewDidLoad() { //funcão que desenha a tela
        super.viewDidLoad() //o texto que for aparecer na tela vai ser essa cor
        
        corLabel.text = cor 

        if cor != nil{
        
            switch cor!.lowercased(){ // deixa tudo que foi digitado em letra minúscula
                
                case "verde":
                    self.view.backgroundColor = UIColor.green
                case "rosa":
                    self.view.backgroundColor = UIColor.magenta
                case "azul":
                    self.view.backgroundColor = UIColor.blue
                case "marelo":
                    self.view.backgroundColor = UIColor.yellow
                case "amarrom":
                    self.view.backgroundColor = UIColor.brown
                default:
                    self.view.backgroundColor = UIColor.purple
                
            }
        }
        
        
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
