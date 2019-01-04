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
    
    enum CodingKeys: String, CodingKey {
        case id
        case description
        case headquarters
        case homepage
        case logoPath = "logo_path"
        case name
        case originCountry = "origin_country"
        case parentCompany = "parent_company"
    }
    
}
