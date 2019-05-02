//
//  ViewController.swift
//  Community Project Final
//
//  Created by Henri Lie Jaya on 26/04/19.
//  Copyright © 2019 Henri Lie Jaya. All rights reserved.
//

import UIKit

// tambahkan collection view data source, collection view delegate

class CommunityPageViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate {
    
    
    // connect kotak  category collection view ke controller
    
    @IBOutlet weak var categoryCollectionView: UICollectionView!
    
    // connect kotak top thread collection view ke controller
    @IBOutlet weak var topThreadCollectionView: UICollectionView!
    
    // penambahan array / list yang ingin ada sebagai category (collection view pertama)
    
    let categoryName = ["Walking", "Healthy", "Grooming", "Food&Treat", "Character", "Training"]
    let categoryImage = ["WalkingCommunityIcon", "HealthyCommunityIcon", "GroomingCommunityIcon", "FoodAndTreatCommunityIcon", "CharacterCommunityIcon", "TrainingCommunityIcon"]
    
    // penambahan array / list yang ingin ada sebagai top thread (collection view kedua)
    
        //    let categoryTags =
    var threadTitle = ["Anjing Jalan", "Skuy Jaga Kesehatan Si Kaki Empat", "Menjaga agar si Kaki Empat Tetap Wangi."]
    var threadDescription = ["Waktu optimal untuk mengajak jalan anjing anda adalah 30 menit / jalan, dilakukan pagi dan sore, menurut mereka seperti senang-senang bermain.", "Kesehatan si kaki empat juga harus di jaga loh!, layaknya manusia mereka juga dapat jatuh sakit.", "Maksimal si kaki empat dimandikan sebanyak 1 kali seminggu."]
    var threadDate = "Today"
    

//=============================================
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        categoryCollectionView.delegate = self
        categoryCollectionView.dataSource = self
        
        topThreadCollectionView.delegate = self
        topThreadCollectionView.dataSource = self
        
    }
    
    
    // this func is still unknown
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    
    // agar cell sebanyak judul
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        if collectionView == self.categoryCollectionView {
            return categoryName.count
        } else {
            return threadTitle.count
        }
    }
    
    
    
    //untuk collection view pertama, agar ga error atas class & mengisi gambar dan judul icon sesuai
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if collectionView == self.categoryCollectionView {
        
        let categoryCell:CategorySlideCollectionViewCell = collectionView.dequeueReusableCell(withReuseIdentifier: "categoryCardCollection", for: indexPath) as! CategorySlideCollectionViewCell
        
            categoryCell.categoryImageView.image = UIImage(named: categoryImage[indexPath.row])
            categoryCell.categoryNameView.text = categoryName[indexPath.row]
        
        return categoryCell
            
        } else {
            let topThreadCell:TopThreadSlideCollectionViewCell = collectionView.dequeueReusableCell(withReuseIdentifier: "topThreadCardCollection", for: indexPath) as! TopThreadSlideCollectionViewCell
            
            topThreadCell.categoryTagsView.text = "Health"
            topThreadCell.threadTitleView.text = threadTitle[indexPath.row]
            topThreadCell.threadDescriptionView.text = threadDescription[indexPath.row]
            topThreadCell.threadDateCreateView.text = threadDate
            topThreadCell.contentView.layer.cornerRadius = 4.0
            topThreadCell.contentView.layer.borderWidth = 1.0
            topThreadCell.contentView.layer.borderColor = UIColor.clear.cgColor
            topThreadCell.contentView.layer.masksToBounds = false
            topThreadCell.layer.shadowColor = UIColor.gray.cgColor
            topThreadCell.layer.shadowOffset = CGSize(width: 0, height: 1.0)
            topThreadCell.layer.shadowRadius = 4.0
            topThreadCell.layer.shadowOpacity = 1.0
            topThreadCell.layer.masksToBounds = false
            topThreadCell.layer.shadowPath = UIBezierPath(roundedRect: topThreadCell.bounds, cornerRadius: topThreadCell.contentView.layer.cornerRadius).cgPath
            
            return topThreadCell
        }
    }
    
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
        
        let communityMainStoryBoard:UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        let detailCommunityViewController = communityMainStoryBoard.instantiateViewController(withIdentifier: "DetailCommunityPageViewController") as! DetailCommunityPageViewController
        detailCommunityViewController.judulDetailThreadTitle = threadTitle[indexPath.row]
        detailCommunityViewController.descriptionDetailThreadDescription = threadDescription[indexPath.row]
        //masih perlu ditambah ^^^
        self.navigationController?.pushViewController(detailCommunityViewController, animated: true)
    }


    
    
}

