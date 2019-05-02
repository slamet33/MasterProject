//
//  AnimalProfileEdit.swift
//  Animal Profile
//
//  Created by Vallen Deviyanto on 29/04/19.
//  Copyright © 2019 Vallen Deviyanto. All rights reserved.
//

import UIKit

class AnimalProfileEdit: UIViewController {
    
    
    @IBOutlet weak var imgAnimalProfileEdit: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        imgAnimalProfileEdit.layer.cornerRadius = imgAnimalProfileEdit.frame.height/2
        imgAnimalProfileEdit.clipsToBounds = true
        
    }
    
    
}
