//
//  PodcastTableViewCell.swift
//  Podcast
//
//  Created by student on 05/04/19.
//  Copyright © 2019 alicia lima. All rights reserved.
//

import UIKit
//UITableViewCell é a classe mãe de PodcastTableViewCell
//super.algumacoisa é a classe filha chamando a classe mãe (a super)

class PodcastTableViewCell: UITableViewCell { //Aqui eu puxo os elementos da minha Mainstoryboard (onde eu monto a interface da tela que o usuário verá)
    
    @IBOutlet weak var fotoImage: UIImageView!
    @IBOutlet weak var nomeLabel: UILabel!
    @IBOutlet weak var contadorLabel: UILabel!
    
    
//    override func awakeFromNib() {
//        super.awakeFromNib() //estou chamando uma função que está definida na classe mãe
//        // Initialization code
//    }
//
//    override func setSelected(_ selected: Bool, animated: Bool) {
//        super.setSelected(selected, animated: animated)
//
//        // Configure the view for the selected state
//    }

}
