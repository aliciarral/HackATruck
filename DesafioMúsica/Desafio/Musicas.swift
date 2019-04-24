//
//  Musicas.swift
//  Desafio
//
//  Created by student on 10/04/19.
//  Copyright © 2019 Hta. All rights reserved.
//

import Foundation

class Musica { //classe Musica que define os atributos e o construtor
    
    let nome: String
    let artista: String
    let album: String
    let foto: String
    
    
    init(nome: String, artista: String, album: String, foto: String){
        
        self.nome = nome
        self.artista = artista
        self.album = album
        self.foto = foto
    
    }
    
}

class MusicaDAO{ //simula um banco de dados com minha lista de músicas
    
    static func getMusica() -> [Musica] { //essa minha funcao me retorna uma lista de músicas
        
        return [
            Musica (nome: "Youngblood", artista: "5SOS", album: "Youngblood", foto: "youngblood"),
            Musica (nome: "Oi, Jesus", artista: "Isadora Pompeo", album: "Pra Te Contar os Meus Segredos", foto: "isadora"),
            Musica (nome: "Ame mais, julgue menos", artista: "Marcela Taís", album: "Moderno à Moda Antiga", foto: "moderno"),
//            Musica (nome: "Tell me You Love Me", artista: "Demi Lovato"),
//            Musica (nome: "Oceans", artista: "Hillsong United"),
//            Musica (nome: "Wildfire", artista: "Seafret"),
//            Musica (nome: "Who You Say I am", artista: "Hillsong United"),
//            Musica (nome: "Reflection", artista: "Mulan Sountrack"),
//            Musica (nome: "Seu Lugar", artista: "Moana Soundtrack"),
//            Musica (nome: "Advinha o quê", artista: "Lulu Santos")
            ]
        
    }
    
    
}
