//
//  KartInfoViewController.swift
//  KartRecordMobile
//
//  Created by 이준수 on 2020/01/04.
//  Copyright © 2020 이준수. All rights reserved.
//

import Foundation
import UIKit

import Then
import SnapKit

fileprivate struct Metric {
    
}


class KartCategoryViewController: UIViewController {
    
    
    
    
    // Mark: Initialization
    init() {
        super.init(nibName: nil, bundle: nil)
        
        self.tabBarItem = UITabBarItem(tabBarSystemItem: .bookmarks, tag: 2)
    }
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    // Mark: UI
    
    let kartImageButton = UIButton().then {
        $0.setTitle("카트 이미지", for: .normal)
        $0.backgroundColor = .black
    }
    let trackImageButton = UIButton().then {
        $0.setTitle("트랙 이미지", for: .normal)
        $0.backgroundColor = .black
    }
    let characterImageButton = UIButton().then {
        $0.setTitle("캐릭터 이미지", for: .normal)
        $0.backgroundColor = .black
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.backgroundColor = .red
        
        self.view.addSubview(self.kartImageButton)
        self.view.addSubview(self.trackImageButton)
        self.view.addSubview(self.characterImageButton)

        // Mark: AutoLayout
        self.kartImageButton.snp.makeConstraints { (make) in
            
            make.width.equalTo(CGFloat(150))
            make.height.equalTo(CGFloat(50))
            
            make.top.equalToSuperview().offset(200)
            
            make.bottom.equalTo(self.trackImageButton.snp.top).offset(-30)
            make.centerX.equalToSuperview()
        }
        
        self.trackImageButton.snp.makeConstraints { (make) in
            
            make.width.equalTo(CGFloat(150))
            make.height.equalTo(CGFloat(50))
            
            make.bottom.equalTo(self.characterImageButton.snp.top).offset(-30)
            make.centerX.equalToSuperview()
            
        }
        self.characterImageButton.snp.makeConstraints { (make) in
            make.width.equalTo(CGFloat(150))
            make.height.equalTo(CGFloat(50))
            
            make.centerX.equalToSuperview()
            
        }
        
    }
    
    override func didReceiveMemoryWarning() {
        self.didReceiveMemoryWarning()
    }
    
    
    
    
}

// 구현 포인트
// 이미지 파일 컬렉션 뷰, 이미지 저장소는 어디에? 로컬에? 아니면 firebase?
// page control 과 스크롤 뷰
