//
//  Credit.swift
//  Movie App
//
//  Created by Amit Kumar on 04/01/19.
//  Copyright © 2019 IndusUnicorn. All rights reserved.
//

import Foundation

struct Credit: Codable {
    
    var creditType: String?
    var department: String?
    var job: String?
    var media: Media?
    var mediaType: String?
    var id: String?
    var person: Person?
    
    enum CodingKeys: String, CodingKey {
        case creditType = "credit_type"
        case department
        case job
        case media
        case mediaType = "media_type"
        case id
        case person
    }
    
}



struct Media: Codable {
    var id: Int?
    var name: String?
    var originalName: String?
    var character: String?
    var episodes: [Episode]?
    var seasons: [Season]?
    
    enum CodingKeys: String, CodingKey {
        case id
        case name
        case originalName = "original_name"
        case character
        case episodes
        case seasons
    }
    
}

