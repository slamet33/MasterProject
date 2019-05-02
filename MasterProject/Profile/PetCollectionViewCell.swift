//
//  PetCollectionViewCell.swift
//  MC1Apps
//
//  Created by Dany Hakim on 25/04/19.
//  Copyright © 2019 Dany Hakim. All rights reserved.
//

import UIKit

class PetCollectionViewCell: UICollectionViewCell {
    //deklarasi var dalam cell disini
    //jangan lupa delegate dan datasource dari collectionview ke viewcontroller
    @IBOutlet weak var petLabel: UILabel!
    @IBOutlet weak var petImageCell: UIImageView!
}
