//
//  ViewController.swift
//  Adoption Profile
//
//  Created by Vallen Deviyanto on 25/04/19.
//  Copyright © 2019 Vallen Deviyanto. All rights reserved.
//

import UIKit

class AdoptionProfile: UIViewController {
    
    @IBOutlet weak var imgAdoptionProfilePet: UIImageView!
    
    @IBOutlet weak var imgAdoptionProfileOwner: UIImageView!
    @IBOutlet weak var adoptionProfilePetName: UILabel!
    @IBOutlet weak var adoptionProfilePetAge: UILabel!
    @IBOutlet weak var adoptionProfilePetGenderIcon: UIImageView!
    
    @IBOutlet weak var adoptionProfilePetInformation: UILabel!
    @IBOutlet weak var adoptionProfileOwnerName: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        imgAdoptionProfilePet.layer.cornerRadius = imgAdoptionProfilePet.frame.height/2
        imgAdoptionProfilePet.clipsToBounds = true
        
        imgAdoptionProfileOwner.layer.cornerRadius = imgAdoptionProfileOwner.frame.height/2
        imgAdoptionProfileOwner.clipsToBounds = true
    }


}

