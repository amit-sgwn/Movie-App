//
//  Movie.swift
//  Movie App
//
//  Created by Amit Kumar on 13/10/18.
//  Copyright © 2018 IndusUnicorn. All rights reserved.
//

import Foundation

struct Movie: Codable {
    var isAdult: Bool
    var backDropPath : String?
    var belongToCollection: AnyObject?
    var genres: [Genre]
    var budget : Int
    var homePage: String?
    var id: Int
    var imdbId: String?
    var originalLanguage: String
    var originalTitle: String
    var overView: String
    var popularity: UInt
    var posterPath: String?
    var producationCopanies: [ProductionCompany]
    var producationCountries: [Country]
    var releaseDate: Date
    var revenue: Int
    var runTime: Int
    var spokenLanguages: Languages
    var status: Status
    var tagLine: String?
    var title: String?
    var video: Bool
    var voteAverage: UInt
    var voteCount: Int
    
    enum CodingKeys: String, CodingKey {
        case isAdult = "isAdult"
    }
}


struct Genre: Codable {
    var id: Int
    var name: String
}

struct Language: Codable {
    
    // describes language code like "en"
    var iso_639_: String
    
    // Language name eg:- "English"
    var name: String
}

enum Status: String {
    case Rumored, Planned,InProduction, PostProduction, Released, Canceled
}

