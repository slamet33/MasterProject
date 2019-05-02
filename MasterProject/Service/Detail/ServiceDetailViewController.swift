//
//  ServiceDetailViewController.swift
//  MasterProject
//
//  Created by Qiarra on 29/04/19.
//  Copyright © 2019 Slamet Riyadi. All rights reserved.
//

import UIKit

class ServiceDetailViewController: UIViewController {
    @IBOutlet weak var serviceDetailImage: UIImageView!
    var imageName: String!
    override func viewDidLoad() {
        super.viewDidLoad()
        setupImageView()
    }
    
    private func setupImageView() {
        guard let imageDetailName = imageName else {return}
        if let image = UIImage(named: imageDetailName) {
            serviceDetailImage.image = image
        }
    }
}
