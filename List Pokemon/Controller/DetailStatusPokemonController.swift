//
//  DetailStatusPokemonController.swift
//  List Pokemon
//
//  Created by Kalfian on 10/05/20.
//  Copyright © 2020 Kalfian. All rights reserved.
//

import UIKit

class DetailStatusPokemonController: UIViewController, GetDetailPokemon {

    var pokemon: Pokemon?
    @IBOutlet weak var hpStat: UIProgressView!
    @IBOutlet weak var attackStat: UIProgressView!
    @IBOutlet weak var defenseStat: UIProgressView!
    @IBOutlet weak var spAtkStat: UIProgressView!
    @IBOutlet weak var spDefStat: UIProgressView!
    @IBOutlet weak var speedStat: UIProgressView!
    
    @IBOutlet weak var hpLabel: UILabel!
    @IBOutlet weak var attackLabel: UILabel!
    @IBOutlet weak var defenseLabel: UILabel!
    @IBOutlet weak var spAtkLabel: UILabel!
    @IBOutlet weak var spDefLabel: UILabel!
    @IBOutlet weak var speedLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        if let data = self.pokemon {
            hpStat.progress = Float(data.stat.hp/1000)
            attackStat.progress = Float(data.stat.attack/1000)
            defenseStat.progress = Float(data.stat.defense/1000)
            spAtkStat.progress = Float(data.stat.sp_atk/1000)
            spDefStat.progress = Float(data.stat.sp_def/1000)
            speedStat.progress = Float(data.stat.speed/1000)
            
            hpLabel.text = "\(data.stat.hp)"
            attackLabel.text = "\(data.stat.attack)"
            defenseLabel.text = "\(data.stat.defense)"
            spAtkLabel.text = "\(data.stat.sp_atk)"
            spDefLabel.text = "\(data.stat.sp_def)"
            speedLabel.text = "\(data.stat.speed)"
        }
        
        // Do any additional setup after loading the view.
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
