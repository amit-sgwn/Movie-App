//
//  UserModel.swift
//  Movie App
//
//  Created by Amit Kumar on 13/10/18.
//  Copyright © 2018 Box8. All rights reserved.
//

import Foundation

struct User: Codable {
    var avatar: Avatar
    var id: Int
    var name: String
    var includeAdult: Bool
    var userName: String
    var languageCode: String
    var countryCode: String
    
    enum CodingKeys: String, CodingKey
    {
        case userName = "username"
        case languageCode = "iso_639_1"
        case countryCode = "iso_3166_1"
        case includeAdult = "include_adult"
        case id
        case name
        case avatar
        
    }
    
}

struct Avatar: Codable {
    var gravatar : Gravatar
}

struct Gravatar: Codable {
    var hash: String
}
