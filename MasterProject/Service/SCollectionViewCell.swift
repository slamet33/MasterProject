//
//  SCollectionViewCell.swift
//  MasterProject
//
//  Created by Qiarra on 26/04/19.
//  Copyright © 2019 Slamet Riyadi. All rights reserved.
//

import UIKit

class SCollectionViewCell: UICollectionViewCell {
    @IBOutlet weak var serviceItemName: UILabel!
    @IBOutlet weak var serviceItemRating: UIStackView!
    @IBOutlet weak var serviceItemDistance: UILabel!
    @IBOutlet weak var serviceItemKind: UIButton!
    @IBOutlet weak var btnServiceCall: UIButton!
    @IBOutlet weak var btnServiceMaps: UIButton!
    @IBOutlet weak var serviceItemAddress: UILabel!
}
