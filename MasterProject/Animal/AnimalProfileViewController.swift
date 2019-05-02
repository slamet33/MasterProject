//
//  AnimalProfileViewControler.swift
//  Animal Profile
//
//  Created by Vallen Deviyanto on 29/04/19.
//  Copyright © 2019 Vallen Deviyanto. All rights reserved.
//

import UIKit

class AnimalProfileViewController: UIViewController {
    
    @IBOutlet weak var imgAnimalProfile: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        imgAnimalProfile.layer.cornerRadius = imgAnimalProfile.frame.height/2
        imgAnimalProfile.clipsToBounds = true
    }
    
    
}
