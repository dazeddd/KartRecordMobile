//
//  ViewController.swift
//  KartRecordMobile
//
//  Created by 이준수 on 2019/12/30.
//  Copyright © 2019 이준수. All rights reserved.
//

import UIKit

import Then

class MainTabBarController: UITabBarController {

    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
//        self.view.addSubview(mainImageView)
        self.navigationItem.prompt = "메인 페이지"
        

    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    
    init() {
        super.init(nibName: nil, bundle: nil)
        
        let firstTab: UIViewController = UserRecordViewController()
        let secondTab: UIViewController = KartGeneralViewController()
        
        let tabs = NSArray(objects: firstTab, secondTab)
        self.setViewControllers(tabs as? [UIViewController], animated: false)
    }
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(:coder) has not been implemented")
    }
    


}

