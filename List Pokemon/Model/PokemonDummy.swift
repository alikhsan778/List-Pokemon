//
//  PokemonDummy.swift
//  List Pokemon
//
//  Created by Kalfian on 05/05/20.
//  Copyright © 2020 Kalfian. All rights reserved.
//

import Foundation
import UIKit

var pokemons: [Pokemon] = [
    Pokemon(name: "bulbasaur", photo: UIImage(named: "bulbasaur")!, type: ["Grass", "Poison"], species: "Seed Pokemon", height: 0.7, weight: 6.9, stat: Stat(hp: 45, attack: 49, defense: 49, sp_atk: 65, sp_def: 65, speed: 45), option: Option(backgroundColor: Constant.Color.init().Green)),
    
    Pokemon(name: "ivysaur", photo: UIImage(named: "ivysaur")!, type: ["Grass", "Poison"], species: "Seed Pokemon", height: 1, weight: 13, stat: Stat(hp: 45, attack: 49, defense: 49, sp_atk: 65, sp_def: 65, speed: 45), option: Option(backgroundColor: Constant.Color.init().Green)),
    
    Pokemon(name: "venusaur", photo: UIImage(named: "venusaur")!, type: ["Grass", "Poison"], species: "Seed Pokemon", height: 2, weight: 10, stat: Stat(hp: 15, attack: 34, defense: 53, sp_atk: 26, sp_def: 65, speed: 45), option: Option(backgroundColor: Constant.Color.init().Green)),
    
    Pokemon(name: "charmander", photo: UIImage(named: "charmander")!, type: ["Fire"], species: "Lizard Pokemon", height: 0.6, weight: 8.5, stat: Stat(hp: 36, attack: 49, defense: 85, sp_atk: 65, sp_def: 65, speed: 45), option: Option(backgroundColor: Constant.Color.init().Red)),
    
    Pokemon(name: "charmeleon", photo: UIImage(named: "charmeleon")!, type: ["Fire"], species: "Lizard Pokemon", height: 1.1, weight: 1.9, stat: Stat(hp: 45, attack: 346, defense: 96, sp_atk: 51, sp_def: 74, speed: 46), option: Option(backgroundColor: Constant.Color.init().Red)),
    
    Pokemon(name: "charizard", photo: UIImage(named: "charizard")!, type: ["Fire"], species: "Lizard Pokemon", height: 1.7, weight: 90.5, stat: Stat(hp: 45, attack: 53, defense: 49, sp_atk: 65, sp_def: 65, speed: 151), option: Option(backgroundColor: Constant.Color.init().Red)),
    
    Pokemon(name: "squirtle", photo: UIImage(named: "squirtle")!, type: ["Water"], species: "Turtle Pokemon", height: 0.5, weight: 9, stat: Stat(hp: 231, attack: 218, defense: 49, sp_atk: 65, sp_def: 65, speed: 45), option: Option(backgroundColor: Constant.Color.init().Blue)),
    
    Pokemon(name: "wartortle", photo: UIImage(named: "wartortle")!, type: ["Water"], species: "Turtle Pokemon", height: 1.0, weight: 22.5, stat: Stat(hp: 78, attack: 46, defense: 49, sp_atk: 65, sp_def: 65, speed: 15), option: Option(backgroundColor: Constant.Color.init().Blue)),
    
    Pokemon(name: "blastoise", photo: UIImage(named: "blastoise")!, type: ["Water"], species: "Turtle Pokemon", height: 1.6, weight: 85.5, stat: Stat(hp: 582, attack: 421, defense: 536, sp_atk: 125, sp_def: 65, speed: 215), option: Option(backgroundColor: Constant.Color.init().Blue)),
    
    Pokemon(name: "caterpie", photo: UIImage(named: "caterpie")!, type: ["Bug"], species: "Worm Pokémon", height: 0.3, weight: 2.9, stat: Stat(hp: 125, attack: 42, defense: 63, sp_atk: 65, sp_def: 65, speed: 45), option: Option(backgroundColor: Constant.Color.init().Green)),
    
    Pokemon(name: "metapod", photo: UIImage(named: "metapod")!, type: ["Bug"], species: "Cocoon Pokémon", height: 0.7, weight: 9.9, stat: Stat(hp: 663, attack: 96, defense: 950, sp_atk: 425, sp_def: 65, speed: 45), option: Option(backgroundColor: Constant.Color.init().Green)),
    
    Pokemon(name: "butterfree", photo: UIImage(named: "butterfree")!, type: ["Bug","Flying"], species: "Butterfly Pokémon", height: 1.1, weight: 23, stat: Stat(hp: 155, attack: 936, defense: 636, sp_atk: 525, sp_def: 65, speed: 45), option: Option(backgroundColor: Constant.Color.init().Purple)),
    
    Pokemon(name: "weedle", photo: UIImage(named: "weedle")!, type: ["Bug", "Poison"], species: "Hairy Bug Pokémon", height: 0.3, weight: 3.2, stat: Stat(hp: 156, attack: 425, defense: 49, sp_atk: 65, sp_def: 753, speed: 626), option: Option(backgroundColor: Constant.Color.init().Red)),
    
    Pokemon(name: "kakuna", photo: UIImage(named: "kakuna")!, type: ["Bug", "Poison"], species: "Cocoon Pokémon", height: 0.6, weight: 10, stat: Stat(hp: 16, attack: 54, defense: 763, sp_atk: 65, sp_def: 65, speed: 235), option: Option(backgroundColor: Constant.Color.init().Yellow)),
    
    Pokemon(name: "beedrill", photo: UIImage(named: "beedrill")!, type: ["Bug", "Poison"], species: "Poison Bee Pokémon", height: 1.0, weight: 29.5, stat: Stat(hp: 326, attack: 852, defense: 49, sp_atk: 65, sp_def: 623, speed: 45), option: Option(backgroundColor: Constant.Color.init().Yellow)),
    
    Pokemon(name: "pidgey", photo: UIImage(named: "pidgey")!, type: ["Normal", "Flying"], species: "Tiny Bird Pokémon", height: 0.3, weight: 1.8, stat: Stat(hp: 464, attack: 49, defense: 49, sp_atk: 65, sp_def: 245, speed: 425), option: Option(backgroundColor: Constant.Color.init().Brown)),
    
    Pokemon(name: "pidgeotto", photo: UIImage(named: "pidgeotto")!, type: ["Normal", "Flying"], species: "Bird Pokémon", height: 1.1, weight: 30, stat: Stat(hp: 351, attack: 49, defense: 49, sp_atk: 65, sp_def: 621, speed: 45), option: Option(backgroundColor: Constant.Color.init().Brown)),
    
    Pokemon(name: "pidgeot", photo: UIImage(named: "pidgeot")!, type: ["Normal", "Flying"], species: "Bird Pokémon", height: 1.5, weight: 39.5, stat: Stat(hp: 166, attack: 374, defense: 637, sp_atk: 589, sp_def: 65, speed: 45), option: Option(backgroundColor: Constant.Color.init().Brown)),
]
