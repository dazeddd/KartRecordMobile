//
//  GamesData.swift
//  KartRecordMobile
//
//  Created by 이준수 on 2020/01/24.
//  Copyright © 2020 이준수. All rights reserved.
//

import Foundation

struct GamesData {
    let id: String
    let nickname: String
}

extension GamesData: Decodable {
    enum GamesDataCodingKeys: String, CodingKey {
        case id = "matchId"
        case character = "character" //response json 상의 키
        
    }
    
    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: GamesDataCodingKeys.self)
        
        id = try container.decode(String.self, forKey: .id)
        nickname = try container.decode(String.self, forKey: .character)
    }
}
