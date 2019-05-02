//
//  ViewController.swift
//  MasterProject
//
//  Created by Qiarra on 24/04/19.
//  Copyright © 2019 Slamet Riyadi. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate{
    
    var imageArray = [UIImage(named : "Feed Cat" ),UIImage(named : "Feed Dog" ),UIImage(named : "Feed Cat" )]
    
    @IBOutlet weak var collectionView: UICollectionView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return imageArray.count
    }
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "imgCollectionView", for: indexPath) as! ImageCollectionViewCell
        cell.imgImage.image = imageArray[indexPath.row]
        return cell

        
    }
    
}


