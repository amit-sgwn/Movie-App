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
    var imdbId: String?  //minLength: 9 maxLength: 9 pattern: ^tt[0-9]{7}
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
    var spokenLanguages: Language
    var status: Status
    var tagLine: String?
    var title: String?
    var video: Bool
    var voteAverage: UInt
    var voteCount: Int
    
    enum MovieCodingKeys: String, CodingKey {
        case isAdult = "adult"
        case backDropPath = "backdrop_path"
        case belongToCollection = "belongs_to_collection"
        case budget
        case genres
        case homePage = "homepage"
        case id
        case imdbId = "imdb_id"
        case originalLanguage = "original_language"
        case originalTitle = "original_title"
        case overView = "overview"
        case popularity
        case posterPath = "poster_path"
        case producationCopanies = "production_companies"
        case producationCountries = "production_countries"
        case releaseDate = "release_date"
        case revenue
        case runTime = "runtime"
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

