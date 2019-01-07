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
    
    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: NetworkCodingKey.self)

        headquarters       = try container.decode(String.self, forKey: .headquarters)
        homePage       = try container.decode(String.self, forKey: .homePage)
        id       = try container.decode(Int.self, forKey: .id)
        name       = try container.decode(String.self, forKey: .name)
        originCountry       = try container.decode(String.self, forKey: .originCountry)

    }
    
}
