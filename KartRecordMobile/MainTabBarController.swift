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

    init() {
        super.init(nibName: nil, bundle: nil)
        
        let firstTab: UIViewController = UserInputViewController()
        let secondTab: UIViewController = KartCategoryViewController()
        
    //        let tabs: [UIViewController] = [firstTab, secondTab]
        self.viewControllers = [firstTab, secondTab]
            .map { viewController -> UINavigationController in
                let navigationController = UINavigationController(rootViewController: viewController)
                return navigationController
            }
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(:coder) has not been implemented")
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.

        self.navigationItem.prompt = "메인 페이지"
        

    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }


}

