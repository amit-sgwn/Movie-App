//
//  UserModel.swift
//  Movie App
//
//  Created by Amit Kumar on 13/10/18.
//  Copyright © 2018 IndusUnicorn. All rights reserved.
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
    
    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        userName = try container.decode(String.self, forKey: .userName)
        avatar = try container.decode(Avatar.self, forKey: .avatar)
        id = try container.decode(Int.self, forKey: .id)
        name = try container.decode(String.self, forKey: .name)
        includeAdult = try container.decode(Bool.self, forKey: .includeAdult)
        countryCode = try container.decode(String.self, forKey: .countryCode)
        languageCode = try container.decode(String.self, forKey: .languageCode)

    }
    
}

struct Avatar: Codable {
    var gravatar : Gravatar
}

struct Gravatar: Codable {
    var hash: String
}
