//
//  ViewController.swift
//  List Pokemon
//
//  Created by Kalfian on 05/05/20.
//  Copyright © 2020 Kalfian. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var pokemonTableVIew: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "List Pokemons"
        self.delegateTableSource()
        // Do any additional setup after loading the view.
    }

    fileprivate func delegateTableSource() {
        pokemonTableVIew.delegate = self
        pokemonTableVIew.dataSource = self
        
        pokemonTableVIew.register(UINib(nibName: "PokemonTableViewCell", bundle: nil), forCellReuseIdentifier: "pokemonCell")
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "ShowDetail" {
            guard let target = segue.destination as? DetailPokemonViewController else { return }
            
            guard let index = sender as? Int else { return }
            
            target.pokemon = pokemons[index]
        }
    }

}

extension ViewController: UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return pokemons.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "pokemonCell", for: indexPath) as! PokemonTableViewCell
        
        let pokemon = pokemons[indexPath.row]
        
        cell.namePokemon.text = pokemon.name
        cell.imagePokemon.image = pokemon.photo
        cell.speciesPokemon.text = pokemon.species
        cell.parentView.backgroundColor = pokemon.option.backgroundColor
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 78
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        self.performSegue(withIdentifier: "ShowDetail", sender: indexPath.row)
    }
}
