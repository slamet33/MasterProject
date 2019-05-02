//
//  ViewController.swift
//  MC1Apps
//
//  Created by Dany Hakim on 25/04/19.
//  Copyright © 2019 Dany Hakim. All rights reserved.
//

import UIKit

class ProfileViewController: UIViewController,UICollectionViewDataSource,UICollectionViewDelegate {
    //declare imageview profil orang
    
    let profilePersonSegue: String = "profilePersonSegue"
    @IBOutlet weak var profilePersonImage: UIImageView!
    
    static var profileImage = UIImage(named: "face") //dibuat static agar bisa terpanggil oleh class lain
        static let numbers = ["Beky","Laoura","Janne","Okto","5"]
        static let petImageCellLists = [UIImage(named: "dog1"),UIImage(named: "dog2"),
    UIImage(named: "dog3"), UIImage(named: "dog4"), UIImage(named: "dog5")]
    
    //set jumlah section yang terdapat di collection view
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return ProfileViewController.numbers.count
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        //round image
        profilePersonImage.layer.cornerRadius = profilePersonImage.frame.height/2
        profilePersonImage.clipsToBounds = true
        
        //load image
        profilePersonImage.image = ProfileViewController.profileImage
    }


    //assign variabel di masing-masing cell,akan mereturn cell yang diambil dari petCell (bisa diliat di line code "let cell = ..."
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
    
    //fungsi jika cell di viewController terklik
//    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
//        collectionView.deselectItem(at: indexPath, animated: true)
//        let item = ProfileViewController.numbers[indexPath.row]
//        performSegue(withIdentifier: profilePersonSegue , sender: item)
//    }
}

