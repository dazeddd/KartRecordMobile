//
//  Kart.swift
//  KartRecordMobile
//
//  Created by 이준수 on 2020/01/24.
//  Copyright © 2020 이준수. All rights reserved.
//

import Foundation

struct Kart {
    let id: String
    let kartName: String
}

extension Kart: Decodable {
    enum KartCodingKeys: String, CodingKey {
        case id = "id"
        case kartName = "name" //response json 상의 키
    }
    
    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: KartCodingKeys.self)
        
        id = try container.decode(String.self, forKey: .id)
        kartName = try container.decode(String.self, forKey: .kartName)
    }
}
