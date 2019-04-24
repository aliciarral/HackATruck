//
//  Animal.swift
//  Aula2Swift_TableViewController
//
//  Created by student on 05/04/19.
//  Copyright © 2019 alicia lima. All rights reserved.
//

import Foundation


    class Animal {
    
        let nome: String
        let especie: String
        let foto: String
        
        init (nome: String, especie: String, foto: String){
            
            self.nome = nome
            self.especie = especie
            self.foto = foto
            
        }

    }


    class AnimalDAO { //Simula banco de dados

        static func getAnimal() -> [Animal]{
        
            return [
            
                Animal(nome: "Jack", especie: "Canguru", foto: "Canguru"),
                Animal(nome: "Belinha", especie: "CatiorroAuAu", foto: "Cachorro"),
                Animal(nome: "Davy", especie: "Priquito", foto: "Piriquito"),
                Animal(nome: "Edy", especie: "Caramelo", foto: "Camelo"),
                Animal(nome: "Yoga", especie: "Cisne", foto: "Cisne")
            ]
        
        }

    }
