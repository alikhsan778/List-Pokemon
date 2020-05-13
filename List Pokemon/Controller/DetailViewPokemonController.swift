//
//  DetailViewPokemonController.swift
//  List Pokemon
//
//  Created by Kalfian on 10/05/20.
//  Copyright © 2020 Kalfian. All rights reserved.
//

import UIKit

class DetailViewPokemonController: UIViewController, GetDetailPokemon {
    
    @IBOutlet weak var pokemonType: UILabel!
    @IBOutlet weak var pokemonHeight: UILabel!
    @IBOutlet weak var pokemonWeight: UILabel!
    
    var pokemon: Pokemon?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        if let data = self.pokemon {
            pokemonType.text = data.type.joined(separator: ", ")
            pokemonHeight.text = "\(data.height) m"
            pokemonWeight.text = "\(data.weight) kg"
        }
        
    }
    
    func getDetailPokemon(pokemon: Pokemon) {
        self.pokemon = pokemon
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
