//
//  GamesDataViewController.swift
//  KartRecordMobile
//
//  Created by 이준수 on 2020/01/24.
//  Copyright © 2020 이준수. All rights reserved.
//

import UIKit

class GamesDataViewController: UIViewController {

    // Mark: UI
    
    let gamesDataTable = UITableView()
    
    
    // Mark: view lifecycle
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

extension GamesDataViewController: UITableViewDataSource {
    public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
    }
    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
    }
}

extension GamesDataViewController: UITableViewDelegate {
    
    
}
