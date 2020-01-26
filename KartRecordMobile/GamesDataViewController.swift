//
//  GamesDataViewController.swift
//  KartRecordMobile
//
//  Created by 이준수 on 2020/01/24.
//  Copyright © 2020 이준수. All rights reserved.
//

import UIKit

import Firebase
import Moya

// uitableview 로 구성할건데, 맵이 cell 의 메인 이미지이고 cell 을 클릭하면 맵, 트랙, 캐릭터, 기록 등의 정보가 뜸

class GamesDataViewController: UIViewController {

    // MARK: Networking
    
    let provider = MoyaProvider<KartAPI>()
    
    // MARK: UI
    
    let gamesDataTable = UITableView().then {
        $0.translatesAutoresizingMaskIntoConstraints = false
        $0.register(MatchInfoTableViewCell.self, forCellReuseIdentifier: "MatchCell")
    }
    
    
    // MARK: view lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
        
        
        
        
        let storage = Storage.storage()
        let gsReference = storage.reference(forURL: "gs://kartrecordmobile.appspot.com/kart/")

        
        

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

extension GamesDataViewController: UITableViewDataSource {
    public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
    }
    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
    }
}

extension GamesDataViewController: UITableViewDelegate {
    
    
}
