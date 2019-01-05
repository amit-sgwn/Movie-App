//
//  Crew.swift
//  Movie App
//
//  Created by Amit Kumar on 05/01/19.
//  Copyright © 2019 IndusUnicorn. All rights reserved.
//

import Foundation

struct Crew: Codable {
    
    var id: Int?
    var creditId: String?
    var name: String?
    var department: String?
    var job: String
    var profilePath: String?
    
    enum CrewCodingKeys: String, CodingKey {
        case id
        case creditId    = "credit_id"
        case name
        case department
        case job
        case profilePath = "profile_path"
    }
    
    init(from decoder: Decoder) throws{
        let container = try decoder.container(keyedBy: CrewCodingKeys.self)
        
        creditId       = try container.decode(String.self, forKey: .creditId)
        name           = try container.decode(String.self, forKey: .name)
        id             = try container.decode(Int.self, forKey: .id)
        department     = try container.decode(String.self, forKey: .department)
        job            = try container.decode(String.self, forKey: .job)
        profilePath    = try container.decode(String.self, forKey: .profilePath)

    }
}
