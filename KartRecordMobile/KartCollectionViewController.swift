//
//  KartCollectionViewController.swift
//  KartRecordMobile
//
//  Created by 이준수 on 2020/01/25.
//  Copyright © 2020 이준수. All rights reserved.
//

import UIKit

class KartCollectionViewController: UIViewController {

    let images = []
    
    fileprivate let collectionView: UICollectionView = {
        let collectionView = UICollectionView(frame: .zero)
        collectionView.translatesAutoresizingMaskIntoConstraints = false
        collectionView.register(ImageCollectionViewCell.self, forCellWithReuseIdentifier: "cell")
        
        return collectionView
    }()
        
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

extension KartCollectionViewController: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! ImageCollectionViewCell
        cell.imageView.image = UIImage(named: images[indexPath.row])
        
        return cell
    }
}

extension KartCollectionViewController: UICollectionViewDelegateFlowLayout {
    
}
