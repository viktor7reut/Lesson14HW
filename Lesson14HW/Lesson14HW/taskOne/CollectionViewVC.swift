//
//  CollectionViewVC.swift
//  Lesson14HW
//
//  Created by Виктор Реут on 17.03.24.
//

import UIKit

class CollectionViewVC: UIViewController {
    
    @IBOutlet weak var collectionView: UICollectionView!
    
    var appleDevice: [String] = [
    "airtag.radiowaves.forward",
    "macbook",
    "ipod",
    "iphone.gen1",
    "ipad.gen1",
    "visionpro",
    "applepencil.tip",
    "applewatch",
    "airpods"
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        collectionView.dataSource = self
        
        setupLayout()
    }
}


extension CollectionViewVC: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
        appleDevice.count
        
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "\(CollectionViewCell.self)", for: indexPath) as? CollectionViewCell
        
        let image = appleDevice[indexPath.row]
        
        cell?.imageView.image = UIImage(systemName: "\(image)")
        cell?.tintColor = .black
        
        return cell ?? UICollectionViewCell()
    }
}

extension CollectionViewVC {
    
    func setupLayout() {
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .horizontal
        layout.itemSize = CGSize(width: 100, height: 100)
        
        collectionView.collectionViewLayout = layout
    }
}
