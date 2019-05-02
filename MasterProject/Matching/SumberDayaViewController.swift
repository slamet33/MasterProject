//
//  SumberDayaViewController.swift
//  MasterProject
//
//  Created by Qiarra on 30/04/19.
//  Copyright © 2019 Slamet Riyadi. All rights reserved.
//

import UIKit

class SumberDayaViewController: UIViewController {
    @IBOutlet weak var lblBudget: UILabel!
    @IBOutlet weak var lblArea: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    @IBOutlet weak var lblWaktu: UILabel!
    @IBAction func budgetChanged(_ sender: UISlider) {
        budget = sender.value
    }
    @IBAction func areaGerakChanged(_ sender: UISlider) {
        areaGerak = sender.value
    }
    @IBAction func waktuChanged(_ sender: UISlider) {
        waktu = sender.value
    }
    
    var budget: Float = 10.0 {
        didSet {
            let finalBudget = String(format: "%.1f", self.budget)
            lblBudget.text = "Rp. \(finalBudget) Jt/Bulan"
        }
    }
    
    var waktu: Float = 2.0 {
        didSet {
            let finalBudget = String(format: "%.1f", self.waktu)
            lblWaktu.text = "\(finalBudget) jam/hari"
        }
    }
    
    var areaGerak: Float = 1.0 {
        didSet {
            let finalAreaGerak = String(format: "%.1f", self.areaGerak)
            lblArea.text = " \(finalAreaGerak) m2"
        }
    }
}
