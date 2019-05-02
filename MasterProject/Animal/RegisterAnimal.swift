//
//  RegisterAnimal.swift
//  Animal Profile
//
//  Created by Vallen Deviyanto on 29/04/19.
//  Copyright © 2019 Vallen Deviyanto. All rights reserved.
//

import UIKit

class RegisterAnimal: UIViewController {
    
    
    @IBOutlet weak var imgAnimalRegister: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        imgAnimalRegister.layer.cornerRadius = imgAnimalRegister.frame.height/2
        imgAnimalRegister.clipsToBounds = true
    }
    
    
}
