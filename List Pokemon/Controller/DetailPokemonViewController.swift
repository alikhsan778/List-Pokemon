//
//  DetailPokemonViewController.swift
//  List Pokemon
//
//  Created by Kalfian on 09/05/20.
//  Copyright © 2020 Kalfian. All rights reserved.
//

import UIKit

protocol GetDetailPokemon {
    func getDetailPokemon(pokemon: Pokemon)
}

class DetailPokemonViewController: UIViewController {

    var pokemon: Pokemon?
    @IBOutlet weak var contentView: UIView!
    @IBOutlet weak var imagePokemon: UIImageView!
    @IBOutlet weak var namePokemon: UILabel!
    @IBOutlet weak var typePokemon: UILabel!
    
    @IBOutlet weak var switchDetail: UISegmentedControl!
    
    @IBOutlet weak var containerDetail: UIView!
    @IBOutlet weak var containerStatus: UIView!
    
    var parsingDetailPokemon: GetDetailPokemon?
    var parsingStatusPokemon: GetDetailPokemon?
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        setData()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setRoundedContentView()
        
        setData()
        // Do any additional setup after loading the view.
    }
    
    fileprivate func setData() {
        if let data = self.pokemon {
            
            self.title = data.name
            self.imagePokemon.image = data.photo
            self.namePokemon.text = data.name
            self.typePokemon.text = data.species
            
            self.view.backgroundColor = data.option.backgroundColor
        }
    }
    
    
    fileprivate func setRoundedContentView() {
        contentView.layer.cornerRadius = 40;
        contentView.layer.masksToBounds = false;
    }

    @IBAction func switchDetailDidTouch(_ sender: UISegmentedControl) {
        if sender.selectedSegmentIndex == 0 {
            containerDetail.isHidden = true
            containerStatus.isHidden = false
        } else {
            containerDetail.isHidden = false
            containerStatus.isHidden = true
        }
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if let data = self.pokemon {
            
            
            if segue.identifier == "viewDetail" {
                self.parsingDetailPokemon = segue.destination as? DetailViewPokemonController
                self.parsingDetailPokemon?.getDetailPokemon(pokemon: data)
            }
            
            if segue.identifier == "viewStatus" {
                self.parsingStatusPokemon = segue.destination as? DetailStatusPokemonController
                self.parsingStatusPokemon?.getDetailPokemon(pokemon: data)
                
            }
        }
        
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
