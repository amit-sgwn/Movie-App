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




enum Gender: Int {
    case male = 0,female,Other
}
