//
//  Person.swift
//  Movie App
//
//  Created by Amit Kumar on 08/01/19.
//  Copyright © 2019 IndusUnicorn. All rights reserved.
//

import Foundation


struct Person {
    
    var birthDay: String?
    var knownForDepartment: String?
    var name: String?
    var id: Int?
    var deathDay: String?
    var alsoKnownAs: String?
    var gender: Gender
    var bioGraphy: String?
    var popularity: UInt
    var placeOfBirth: String?
    var profilePath: String?
    var adult: Bool?
    var imdbId: String?
    var homePage: String?
    
    enum CodingKeys: String, CodingKey {
        
        case birthDay           = "birthday"
        case knownForDepartment = "known_for_department"
        case deathDay           = "deathday"
        case id
        case name
        case alsoKnownAs        = "also_known_as"
        case gender
        case bioGraphy          = "biography"
        case popularity
        case placeOfBirth       = "place_of_birth"
        case profilePath        = "profile_path"
        case adult
        case imdbId             = "imdb_id"
        case homePage           = "homepage"
        
    }
}


extension Person: Decodable {
    
    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        birthDay           = try container.decode(String.self, forKey: .birthDay)
        id                 = try container.decode(Int.self, forKey: .id)
        knownForDepartment = try container.decode(String.self, forKey: .knownForDepartment)
        name               = try container.decode(String.self, forKey: .name)
        alsoKnownAs              = try container.decode(String.self, forKey: .alsoKnownAs)
        gender              = try container.decode(Gender.self, forKey: .gender)
        bioGraphy              = try container.decode(String.self, forKey: .bioGraphy)
        popularity              = try container.decode(UInt.self, forKey: .popularity)
        placeOfBirth              = try container.decode(String.self, forKey: .placeOfBirth)
        profilePath              = try container.decode(String.self, forKey: .profilePath)
        adult              = try container.decode(Bool.self, forKey: .adult)
        imdbId              = try container.decode(String.self, forKey: .imdbId)
        homePage              = try container.decode(String.self, forKey: .homePage)
        deathDay              = try container.decode(String.self, forKey: .deathDay)

    }
}

enum Gender: Int,Codable {
    case male = 0,female,Other
}
