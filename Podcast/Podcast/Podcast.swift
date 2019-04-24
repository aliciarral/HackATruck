//
//  Podcast.swift
//  Podcast
//
//  Created by student on 05/04/19.
//  Copyright © 2019 alicia lima. All rights reserved.
//

import Foundation


class Podcast { //classe Podcast que define os atributos e o construtor
    
    let nome: String
    let contadorDePodcastsReproduzidos: String
    let foto: String
    
    init(nome: String, contadorDePodcastsReproduzidos: String, foto: String){
        
        self.nome = nome
        self.contadorDePodcastsReproduzidos = contadorDePodcastsReproduzidos
        self.foto = foto
    }
    
}

class PodcastDAO{ //simula um banco de dados
    
    static func getPodcast() -> [Podcast] { //essa minha funcao me retorna uma lista de podcast
        
        return [
            Podcast (nome: "99Vidas", contadorDePodcastsReproduzidos: "No unplayed episodes", foto: "99vidas"),
            Podcast (nome: "Canal42.tv", contadorDePodcastsReproduzidos: "No unplayed episodes", foto: "canal42"),
            Podcast (nome: "MacMagazine no Ar", contadorDePodcastsReproduzidos: "No unplayed episodes", foto: "mm"),
            Podcast (nome: "Não Ouvo", contadorDePodcastsReproduzidos: "No unplayed episodes", foto: "naoouvo"),
            Podcast (nome: "NerdCast", contadorDePodcastsReproduzidos: "No unplayed episodes", foto: "nerdcast"),
            Podcast (nome: "O Melhor Podcast do Brasil", contadorDePodcastsReproduzidos: "No unplayed episodes", foto: "ompdb"),
            Podcast (nome: "RapaduraCast", contadorDePodcastsReproduzidos: "No unplayed episodes", foto: "rapaduracast"),
            Podcast (nome: "Reloading", contadorDePodcastsReproduzidos: "No unplayed episodes", foto: "reloading"),
            Podcast (nome: "SciCast", contadorDePodcastsReproduzidos: "No unplayed episodes", foto: "scicast")
             ]
        
    }
    
    
}
