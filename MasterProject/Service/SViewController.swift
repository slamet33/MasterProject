//
//  SViewController.swift
//  MasterProject
//
//  Created by Qiarra on 26/04/19.
//  Copyright © 2019 Slamet Riyadi. All rights reserved.
//

import UIKit
import Foundation
import MapKit

class SViewController: UIViewController {
    
    let detailServiceSegueIdentifier = "detailService"
    var phoneNumber = ""
    var latitude : CLLocationDegrees = 0.0
    var longitude : CLLocationDegrees = 0.0
    
    struct Item {
        var serviceName: String
        var serviceAddress: String
        var serviceDistance: Double
        var serviceKind: String
        var serviceLocation: [[CLLocationDegrees]]
//        var servicePhoneNumber: String
    }
    
    @IBOutlet weak var serviceCollectionView: UICollectionView!
        let serviceLocation: [[String]] = [["-6.3040041", "106.6539388"], ["-6.3040041", "106.6539388"], ["-6.3040041", "106.6539388"], ["-6.302129", "106.6657389"], ["-6.3104372", "106.680719"], ["-6.3226954", "106.6622522"]]
//    let serviceName: [String] = ["Laras Satwa", "Geraldine Pet Shop", "Pawpaw Petshop", "Pet Shop Pet Station BSD City", "Happy Petshop", "T & T PetShop"]
//    let serviceAddress: [String] = ["Ruko Tol Boulevard Blok C-28, Tangerang Selatan", "Jl. Raya Kelapa Dua Bencongan Kelapa Dua Kab. Tangerang", "Jl. Pare No.RT.1, RW.8, Rawa Buntu, Tangsel", "Nusa Loka BSD City Blok A2 10-11, Tangsel", "BSD Modern Market, Jl. Letnan Sutopo, Tangsel", "JL. Raya Serpong, North Serpong, South Tangerang"]
//    let locationImage = [UIImage(named: "mountain"), UIImage(named: "mountain"), UIImage(named: "mountain"), UIImage(named: "mountain"), UIImage(named: "mountain"), UIImage(named: "mountain")]
//    let serviceDistance: [Float] = [0.3, 1.2, 1.1, 1.0, 2.0, 1.4]
//
    var itemService: [Item] = [
        Item(serviceName: "Laras Satwa", serviceAddress: "Ruko Tol Boulevard Blok C-28, Tangerang Selatan", serviceDistance: 0.3, serviceKind: "Petshop", serviceLocation: [[-6.3040041, 106.6539388]]),
        Item(serviceName: "Geraldine Pet Shop", serviceAddress: "Jl. Raya Kelapa Dua Bencongan Kelapa Dua Kab. Tangerang", serviceDistance: 1.2, serviceKind: "Petshop", serviceLocation: [[-6.3040041, 106.6539388]]),
        Item(serviceName: "Pawpaw Petshop", serviceAddress: "Jl. Pare No.RT.1, RW.8, Rawa Buntu, Tangsel", serviceDistance: 1.1,  serviceKind: "Petshop", serviceLocation: [[-6.3040041, 106.6539388]]),
        Item(serviceName: "Pet Shop Pet Station BSD City", serviceAddress: "Nusa Loka BSD City Blok A2 10-11, Tangsel", serviceDistance: 1.0,  serviceKind: "Petshop", serviceLocation: [[-6.302129, 106.6657389]]),
        Item(serviceName: "Happy Petshop", serviceAddress: "BSD Modern Market, Jl. Letnan Sutopo, Tangsel", serviceDistance: 2.0,  serviceKind: "Petshop", serviceLocation: [[-6.3104372, 106.680719]]),
        Item(serviceName: "T & t Petshop", serviceAddress: "JL. Raya Serpong, North Serpong, South Tangerang", serviceDistance: 1.4,  serviceKind: "Petshop", serviceLocation: [[-6.3226954, 106.6622522]])
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupCollectionView()
        self.navigationController?.isNavigationBarHidden = false
    }
    
    func setupCollectionView() {
        serviceCollectionView.delegate = self
        serviceCollectionView.dataSource = self
    }
}

extension SViewController: UICollectionViewDataSource, UICollectionViewDelegate {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return itemService.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "SCell", for: indexPath) as! SCollectionViewCell
        cell.serviceItemName.text = itemService[indexPath.row].serviceName
        cell.serviceItemAddress.text = itemService[indexPath.row].serviceAddress
        cell.serviceItemDistance.text = String(itemService[indexPath.row].serviceDistance) + " Km"
        cell.serviceItemKind.titleLabel?.text = itemService[indexPath.row].serviceKind
        cell.btnServiceCall.addTarget(self, action: #selector(btnServiceCall(_:)), for: .touchUpInside)
        cell.btnServiceMaps.addTarget(self, action: #selector(btnServiceMaps(_:)), for: .touchUpInside)
//        phoneNumber = itemService[indexPath.row]
        
        latitude = itemService[indexPath.row].serviceLocation[0][0]
        longitude = itemService[indexPath.row].serviceLocation[0][1]
        
        cell.contentView.layer.cornerRadius = 4.0
        cell.contentView.layer.borderWidth = 1.0
        cell.contentView.layer.borderColor = UIColor.clear.cgColor
        cell.contentView.layer.masksToBounds = false
        cell.layer.shadowColor = UIColor.gray.cgColor
        cell.layer.shadowOffset = CGSize(width: 0, height: 1.0)
        cell.layer.shadowRadius = 4.0
        cell.layer.shadowOpacity = 1.0
        cell.layer.masksToBounds = false
        cell.layer.shadowPath = UIBezierPath(roundedRect: cell.bounds, cornerRadius: cell.contentView.layer.cornerRadius).cgPath
        
        return cell
    }
    
//    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
//        collectionView.deselectItem(at: indexPath, animated: true)
//        let item = itemService[indexPath.row]
//        performSegue(withIdentifier: detailServiceSegueIdentifier , sender: item)
//    }
    
    @IBAction func btnServiceCall(_ sender: UIButton) {
        if let url = URL(string: "tel://\("085871555289")") {
            UIApplication.shared.open(url, options: [:], completionHandler: nil)
        }
    }
    
    @IBAction func btnServiceMaps(_ sender: UIButton) {
        openMapForPlace()
    }
    
    func openMapForPlace() {
        let regionDistance:CLLocationDistance = 10000
        let coordinates = CLLocationCoordinate2DMake(latitude, longitude)
        let regionSpan = MKCoordinateRegion(center: coordinates, latitudinalMeters: regionDistance, longitudinalMeters: regionDistance)
        let options = [
            MKLaunchOptionsMapCenterKey: NSValue(mkCoordinate: regionSpan.center),
            MKLaunchOptionsMapSpanKey: NSValue(mkCoordinateSpan: regionSpan.span)
        ]
        let placemark = MKPlacemark(coordinate: coordinates, addressDictionary: nil)
        let mapItem = MKMapItem(placemark: placemark)
        mapItem.name = "Place Name"
        mapItem.openInMaps(launchOptions: options)
    }
}
