//
//  PagingMenuViewController.swift
//  KartRecordMobile
//
//  Created by 이준수 on 2020/01/25.
//  Copyright © 2020 이준수. All rights reserved.
//

import UIKit

import Parchment
import SnapKit

class InfoPagingViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let firstViewController = KartCollectionViewController()
        let secondViewController = TrackCollectionViewController()
        
        let pagingViewController = FixedPagingViewController(viewControllers: [
        firstViewController,
        secondViewController
        ])

        addChild(pagingViewController)
        view.addSubview(pagingViewController.view)
        pagingViewController.didMove(toParent: self)
        pagingViewController.view.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            pagingViewController.view.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            pagingViewController.view.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            pagingViewController.view.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            pagingViewController.view.topAnchor.constraint(equalTo: view.topAnchor)
        ])
        
        
        
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
