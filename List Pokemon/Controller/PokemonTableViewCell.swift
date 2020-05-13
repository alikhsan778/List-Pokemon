//
//  PokemonTableViewCell.swift
//  List Pokemon
//
//  Created by Kalfian on 09/05/20.
//  Copyright © 2020 Kalfian. All rights reserved.
//

import UIKit

class PokemonTableViewCell: UITableViewCell {

    @IBOutlet weak var imagePokemon: UIImageView!
    @IBOutlet weak var namePokemon: UILabel!
    @IBOutlet weak var speciesPokemon: UILabel!
    @IBOutlet weak var parentView: UIView!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
