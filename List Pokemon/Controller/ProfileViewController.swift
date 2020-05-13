//
//  ProfileViewController.swift
//  List Pokemon
//
//  Created by Kalfian on 13/05/20.
//  Copyright © 2020 Kalfian. All rights reserved.
//

import UIKit

class ProfileViewController: UIViewController {

    @IBOutlet weak var imageProfile: UIImageView!
    @IBOutlet weak var nameProfile: UILabel!
    @IBOutlet weak var emailProfile: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.title = "Profile"
        
        nameProfile.text = "Kukuh Alfian Hanif"
        emailProfile.text = "kukuhalf@gmail.com"
        
        imageProfile.layer.cornerRadius = imageProfile.frame.size.height/2
        imageProfile.image = Constant.Image.init().Profile
        // Do any additional setup after loading the view.
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
