//
//  PokemonModel.swift
//  List Pokemon
//
//  Created by Kalfian on 05/05/20.
//  Copyright © 2020 Kalfian. All rights reserved.
//

import UIKit

struct Pokemon {
    let name: String
    let photo: UIImage
    let type: [String]
    let species: String
    let height: Float64
    let weight: Float64
    let stat: Stat
    let option: Option
}

struct Option {
    let backgroundColor: UIColor
}

struct Stat {
    let hp: Float64
    let attack: Float64
    let defense: Float64
    let sp_atk: Float64
    let sp_def: Float64
    let speed: Float64
}
