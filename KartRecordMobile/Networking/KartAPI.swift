//
//  KartAPI.swift
//  KartRecordMobile
//
//  Created by 이준수 on 2020/01/24.
//  Copyright © 2020 이준수. All rights reserved.
//

import Foundation

import Alamofire
import Moya

// apikey 는 어떻게 전달?


enum KartAPI {
    case nickname(nick: String)
    case gameData(accessID: String, startDate:String, endDate: String)
}

extension KartAPI: TargetType {
    
    public var baseURL: URL {
        return URL(string: "https://api.nexon.co.kr/kart/v1.0/users")!
        
    }
    
    public var path: String {
        switch self {
        case .nickname(let nick):
            return "/\(nick)"
        case .gameData(let accessID, let startDate, let endDate):
            return "/\(accessID)/matches?start_date=\(startDate)&end_date=\(endDate) &offset=&limit=&match_types="
            
        }
    
    }
    public var method: Moya.Method {
        switch self {
        case .nickname(_):
            return .get
        case .gameData(_, _, _):
            return .get
        
        }
    }
    
    public var headers: [String: String]? {
        return ["Content-Type": "application/json"]
    }
    public var validationType: ValidationType {
        return .successCodes
    }
    
    
    public var task: Task {
        return .requestPlain
    }
    
    public var sampleData: Data {
        return Data()
    }
    


}







/*
func fetchAccessID(userNickname: String) -> String {
    
    let url: String = "https://api.nexon.co.kr/kart/v1.0/users/nickname/\(userNickname)"
    var accessID: String
    
    AF.request(url)
    .responseJSON { response in
        switch response.result {
            case .success(let value):
                if let JSON = value as? [String: Any] {
                    let accountNumber = JSON["accessID"] as! String
                    var accessID = accountNumber
                }
                
                
            
            case .failure(let error):
                print("error!!!")
        
    
}
*/



/*
request : https://api.nexon.co.kr/kart/v1.0/users/nickname/{nickname}

func(nickname) -> access_id
 
 response:
 {
         "accessId": "420110218",
         "name": "데브소스"
 }
 
 
 
 */




/*
https://api.nexon.co.kr/kart/v1.0/users/{access_id}/matches?start_date={start_date}&end_date={end_date} &offset={offset}&limit={limit}&match_types={match_types}
 
 Requst: https://api.nexon.co.kr/kart/v1.0/users/420110218/matches?start_date=2020-01-01&end_date=2020-01-15 &offset=0&limit=10&match_types=
 
*/
