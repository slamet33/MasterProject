//
//  HomeViewController.swift
//  MasterProject
//
//  Created by Qiarra on 29/04/19.
//  Copyright © 2019 Slamet Riyadi. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate{
    
    var imageArray = [UIImage(named : "Feed Cat" ),UIImage(named : "Feed Dog" ),UIImage(named : "Feed Cat" )]
    
    var articleList: [String] = ["Cara memandikan kucing", "Tips memandikan Anjing", "Jenis Kucing Lucu"]
    
    @IBOutlet weak var collectionView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return imageArray.count
    }
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "imgCollectionView", for: indexPath) as! ImageCollectionCell
        cell.imgHomeNewArticle.image = imageArray[indexPath.row]
        cell.lblHomeNewArticle.text = articleList[indexPath.row]
        return cell
    }
    
}
