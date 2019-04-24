//
//  MusicasTableViewCell.swift
//  Desafio
//
//  Created by student on 10/04/19.
//  Copyright © 2019 Hta. All rights reserved.
//

import UIKit

class MusicasTableViewCell: UITableViewCell {

    
    @IBOutlet weak var nomeLabel: UILabel!
    
    @IBOutlet weak var artistaLabel: UILabel!
    

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
