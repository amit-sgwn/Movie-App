//
//  ProductionModel.swift
//  Movie App
//
//  Created by Amit Kumar on 13/10/18.
//  Copyright © 2018 Box8. All rights reserved.
//

import Foundation

struct Country: Codable {
    // country code eg:- "US"
    var iso_3166_1: String
    var name: String
}


struct ProductionCompany: Codable {
    var name: String
    var id: Int
    var logoPath : String?
    var originCountry: String
    
    enum CodingKeys: String, CodingKey
    {
        case logoPath = "logo_path"
        case originCountry =  "origin_country"
        case id
        case name
    }
}
