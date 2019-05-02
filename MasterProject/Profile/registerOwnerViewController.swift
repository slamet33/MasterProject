//
//  registerOwnerViewController.swift
//  MC1Apps
//
//  Created by Dany Hakim on 26/04/19.
//  Copyright © 2019 Dany Hakim. All rights reserved.
//

import UIKit

class registerOwnerViewController: UIViewController,UICollectionViewDataSource,UICollectionViewDelegate{
 
    //set jumlah section
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return ProfileViewController.numbers.count
    }
    
    //assign di masing2 item
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "petCell", for: indexPath) as! PetCollectionViewCell
        
        //assign object in cell here
        cell.petLabel.text = ProfileViewController.numbers[indexPath.item] //indexPath.item mengambil nilai int dari index
        //set image jadi round
        cell.petImageCell.layer.cornerRadius = cell.petImageCell.frame.height/2
        cell.petImageCell.clipsToBounds = true
        cell.petImageCell.image = ProfileViewController.petImageCellLists[indexPath.item] //set image di asset ke cell
        
        return cell
    }
    
    @IBOutlet weak var registerProfileImage: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        //round image
        registerProfileImage.layer.cornerRadius = registerProfileImage.frame.height/2
        registerProfileImage.clipsToBounds = true
        //set image dari variable global di view controller
        registerProfileImage.image = ProfileViewController.profileImage
    }
}
