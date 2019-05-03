//
//  ResultViewController.swift
//  MasterProject
//
//  Created by Qiarra on 30/04/19.
//  Copyright © 2019 Slamet Riyadi. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {

    @IBOutlet weak var imgProfileResult: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    imgProfileResult.layer.cornerRadius = imgProfileResult.frame.height/2
        imgProfileResult.clipsToBounds = true
    }
    
    
}
