//
//  Star.swift
//  Movie App
//
//  Created by Amit Kumar on 05/01/19.
//  Copyright © 2019 IndusUnicorn. All rights reserved.
//

import Foundation


struct Star: Codable {
    
    var id: Int?
    var name: String?
    var creditId: String?
    var character: String?
    var order: String?
    var profilePath: String?
    
    enum StarCodingKeys: String, CodingKey {
        
        case id
        case name
        case creditId    = "credit_id"
        case character
        case order
        case profilePath = "profile_path"
    }
    
    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: StarCodingKeys.self)
        
        id          = try container.decode(Int.self, forKey: .id)
        name        = try container.decode(String.self, forKey: .name)
        creditId    = try container.decode(String.self, forKey: .creditId)
        character   = try container.decode(String.self, forKey: .character)
        order       = try container.decode(String.self, forKey: .order)
        profilePath = try container.decode(String.self, forKey: .profilePath)

    }
    
}
