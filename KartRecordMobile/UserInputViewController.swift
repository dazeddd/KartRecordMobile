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
import SnapKit

import Moya

class UserInputViewController: UIViewController, UITextFieldDelegate {
    
    let provier = MoyaProvider<KartAPI>()
    
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
        $0.backgroundColor = .white
       
        
    }
    let startDateInput = UITextField()
        .then {
        $0.text = "조회 시작 날짜를 입력하세요 ex)2019-02-15"
        $0.backgroundColor = .white
        
        
    }
    let endDateInput = UITextField().then {
        $0.text = "조회 끝 날짜를 입력하세요 ex)2019-02-15"
        $0.backgroundColor = .white
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // api request
        
        
        
        
        // ui, autolayout
        self.view.backgroundColor = .green
        
        self.view.addSubview(self.userNameInput)
        self.view.addSubview(self.startDateInput)
        self.view.addSubview(self.endDateInput)
        
        self.userNameInput.snp.makeConstraints { (make) in
            
            make.width.equalTo(CGFloat(300))
            make.height.equalTo(CGFloat(40))
            
            make.top.equalToSuperview().offset(200)
            
            
            
            make.bottom.equalTo(self.startDateInput.snp.top).offset(-30)
            make.centerX.equalToSuperview()
        }
        
        self.startDateInput.snp.makeConstraints { (make) in
            
            make.width.equalTo(CGFloat(300))
            make.height.equalTo(CGFloat(40))
            
            make.bottom.equalTo(self.endDateInput.snp.top).offset(-30)
            make.centerX.equalToSuperview()
        }
        
        self.endDateInput.snp.makeConstraints { (make) in
            
            make.width.equalTo(CGFloat(300))
            make.height.equalTo(CGFloat(40))
            
            make.centerX.equalToSuperview()
        }
        
        
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }
    
    
}


// 구현 포인트
// autolayout(snapkit) - 적절한 ui 배치, 적절한 tabbaritem icon,
