//
//  ViewController.swift
//  Adoption List 2
//
//  Created by Vallen Deviyanto on 26/04/19.
//  Copyright © 2019 Vallen Deviyanto. All rights reserved.
//

import UIKit

class AdoptionList : UIViewController, UICollectionViewDataSource, UICollectionViewDelegate {

    let adoptionPetImage = [UIImage(named:"dog1"),UIImage(named:"dog2"),UIImage(named:"dog3"),UIImage(named:"dog4"),UIImage(named:"dog5"),UIImage(named:"dog6"),UIImage(named:"dog7"),UIImage(named:"dog8"),UIImage(named:"dog9")]
    let adoptionPetName = ["Shibe", "Doggo", "Ashibe","Ashiba","Ashibu","Ashiba","Ashibi","Ashibo","Ashibu"]
    let adoptionPetAge = ["1 Tahun","2 Tahun","3 Tahun","3 Tahun","3 Tahun","3 Tahun","3 Tahun","3 Tahun","3 Tahun"]
    let adoptionPetGenderIcon = [UIImage(named :"female"),UIImage(named :"male"),UIImage(named :"male"),UIImage(named :"male"),UIImage(named :"male"),UIImage(named :"male"),UIImage(named :"male"),UIImage(named :"male"),UIImage(named :"male")]
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return adoptionPetName.count
    } 
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "AdoptionListCell", for: indexPath) as! AdoptionPetListCell
        
        cell.adoptionPetImage.image = adoptionPetImage[indexPath.row]
        cell.adoptionPetGenderIcon.image = adoptionPetGenderIcon[indexPath.row]
        cell.adoptionPetName.text = adoptionPetName[indexPath.row]
        cell.adoptionPetAge.text = adoptionPetAge[indexPath.row]
        
        cell.adoptionPetImage.layer.cornerRadius = cell.adoptionPetImage.frame.height/2
        cell.adoptionPetImage.clipsToBounds = true
        
        return cell
    }
    
//    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
//        collectionView.deselectItem(at: indexPath, animated: true)
//        let item = adoptionPetName[indexPath.row]
//        performSegue(withIdentifier: "adoptionProfile", sender: item)
//    }
}

