//
//  ViewController.swift
//  Senior Project
//
//  Created by Rolman De los Santos on 3/26/18.
//  Copyright © 2018 Rolman De los Santos. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {
    
    var imageArray = [UIImage(named:"calendar"),UIImage(named:"clipper")]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return imageArray.count
    }
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "ImageCollectionViewCell", for: indexPath)
        as! ImageCollectionViewCell
        
        cell.ImgImage.image = imageArray[indexPath.row]
        
        return cell
        
    }

}

