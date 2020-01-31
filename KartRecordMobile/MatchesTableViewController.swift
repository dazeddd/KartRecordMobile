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

// uitableview 로 구성할건데, cell 을 클릭하면(cell 에 어떤 데이터를)
// MatchDetailInfoViewController 에 맵, 트랙, 캐릭터, 기록 등의 정보가 뜸

class MatchesTableViewController: UIViewController {

    // MARK: Networking
    
    let provider = MoyaProvider<KartAPI>()
    
    // MARK: UI
    
    /*
    let gamesDataTable = UITableView().then {
        $0.translatesAutoresizingMaskIntoConstraints = false
        $0.register(MatchInfoTableViewCell.self, forCellReuseIdentifier: "MatchCell")
    }
    */
    
    let gamesDataTable = UITableView().then {
        
        $0.register(MatchInfoTableViewCell.self, forCellReuseIdentifier: "MatchCell")
    }
    
    var arrayHeader = [1, 1, 1, 1]
    

    func tapSection(sender: UIButton) {
        self.arrayHeader[sender.tag] = (self.arrayHeader[sender.tag] == 0) ? 1 : 0
        self.gamesDataTable.reloadSections([sender.tag], with: .fade)
    }
    
    // MARK: Initialization
    init() {
        super.init(nibName: nil, bundle: nil)
    
    }
    
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    
    
    
    // MARK: view lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.addSubview(gamesDataTable)
        self.gamesDataTable.dataSource = self
        self.gamesDataTable.delegate = self
        
        
        
        
        
        
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

extension MatchesTableViewController: UITableViewDataSource {
    public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return (self.arrayHeader[section] == 0) ? 0 : 4
    }
    public func numberOfSections(in tableView: UITableView) -> Int {
        return arrayHeader.count
    }
    
    
    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "MatchCell", for: indexPath)
        cell.textLabel?.text = "section: \(indexPath.section)  row: \(indexPath.row)"
        
        return cell
    }
}

extension MatchesTableViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 40
    }
    
    
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let viewHeader = UIView(frame: CGRect(x:0, y:0, width:UIScreen.main.bounds.size.width, height:40))
        viewHeader.backgroundColor = .darkGray
        
        let button = UIButton(type: .custom)
        button.frame = viewHeader.bounds
        button.tag = section
        
        button.addTarget(self, action: #selector(tabSection(sender:)), for: .touchUpInside)
        button.setTitle("Section: \(section)", for: .normal)
        viewHeader.addSubview(button)
        
        return viewHeader
    }
    
}
