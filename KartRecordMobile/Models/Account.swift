//
//  Account.swift
//  KartRecordMobile
//
//  Created by 이준수 on 2020/01/24.
//  Copyright © 2020 이준수. All rights reserved.
//

import Foundation

struct Account {
    let id: String
    let nickname: String
}

extension Account: Decodable {
    enum AccountCodingKeys: String, CodingKey {
        case id = "accessId"
        case nickname = "name" //response json 상의 키
    }
    
    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: AccountCodingKeys.self)
        
        id = try container.decode(String.self, forKey: .id)
        nickname = try container.decode(String.self, forKey: .nickname)
    }
}
