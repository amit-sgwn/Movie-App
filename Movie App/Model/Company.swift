//
//  Company.swift
//  Movie App
//
//  Created by Amit Kumar on 04/01/19.
//  Copyright © 2019 Box8. All rights reserved.
//

import Foundation


struct Company: Codable {
    var description: String?
    var headquarters: String?
    var homepage: String?
    var id: Int?
    var logoPath: String?
    var name: String?
    var originCountry: String?
    var parentCompany: Company?
    
    enum CompanyCodingKeys: String, CodingKey {
        case id
        case description
        case headquarters
        case homepage
        case logoPath = "logo_path"
        case name
        case originCountry = "origin_country"
        case parentCompany = "parent_company"
    }
    
    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CompanyCodingKeys.self)
        
        id = try container.decode(Int.self, forKey: .id)
        description = try container.decode(String.self, forKey: .description)
        headquarters = try container.decode(String.self, forKey: .headquarters)
        homepage = try container.decode(String.self, forKey: .homepage)
        logoPath = try container.decode(String.self, forKey: .logoPath)
        name = try container.decode(String.self, forKey: .name)
        originCountry = try container.decode(String.self, forKey: .originCountry)
        parentCompany = try container.decode(String.self, forKey: .parentCompany)

        
    }
    
}
