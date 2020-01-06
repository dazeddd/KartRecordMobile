//
//  UserRecordViewController.swift
//  KartRecordMobile
//
//  Created by 이준수 on 2020/01/04.
//  Copyright © 2020 이준수. All rights reserved.
//

import Foundation
import UIKit

import Then

class UserRecordViewController: UIViewController, UITextFieldDelegate {
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.addSubview(userNameInput)
        
        
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }
    
    // Mark: initialization
    init() {
        super.init(nibName: nil, bundle: nil)
        
        self.tabBarItem = UITabBarItem(tabBarSystemItem: .history, tag: 1)
    }
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    // Mark: UI
    let userNameInput = UITextField().then {
        $0.text = "카트 아이디를 입력하세요"
//        $0.delegate =
        
    }
    let startDateInput = UITextField().then {
        $0.text = "조회 시작 날짜를 입력하세요 ex)2019-02-15"
    }
    let endDateInput = UITextField().then {
        $0.text = "조회 끝 날짜를 입력하세요 ex)2019-02-15"
    }
    
    
}

// 구현 포인트
// autolayout(snapkit) - 적절한 ui 배치, 적절한 tabbaritem icon,
