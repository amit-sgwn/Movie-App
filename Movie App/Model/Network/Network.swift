//
//  Network.swift
//  Movie App
//
//  Created by Amit Kumar on 07/01/19.
//  Copyright © 2019 IndusUnicorn. All rights reserved.
//

import Foundation

struct Network: Codable {
    var headquarters: String?
    var homePage: String?
    var id: Int?
    var name: String?
    var originCountry: String?
    
    enum NetworkCodingKey: String, CodingKey {
        case headquarters
        case homePage = "homepage"
        case id
        case name
        case originCountry = "origin_country"
    }
    
}
