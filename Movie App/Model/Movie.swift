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
        case spokenLanguages = "spoken_languages"
        case status
        case tagLine = "tagline"
        case title
        case video
        case voteAverage = "vote_average"
        case voteCount = "vote_count"
    }
    
    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: MovieCodingKeys.self)
        
        isAdult              = try container.decode(Bool.self, forKey: .isAdult)
        id                   = try container.decode(Int.self, forKey: .id)
        backDropPath         = try container.decode(String.self, forKey: .backDropPath)
        belongToCollection   = try container.decode(String.self, forKey: .belongToCollection) as AnyObject
        budget               = try container.decode(Int.self, forKey: .budget)
        genres               = try container.decode([Genre].self, forKey: .genres)
        homePage             = try container.decode(String.self, forKey: .homePage)
        imdbId               = try container.decode(String.self, forKey: .imdbId)
        originalLanguage     = try container.decode(String.self, forKey: .originalLanguage)
        originalTitle        = try container.decode(String.self, forKey: .originalTitle)
        overView             = try container.decode(String.self, forKey: .overView)
        popularity           = try container.decode(UInt.self, forKey: .popularity)
        posterPath           = try container.decode(String.self, forKey: .posterPath)
        producationCopanies  = try container.decode([ProductionCompany].self, forKey: .producationCopanies)
        producationCountries = try container.decode([Country].self, forKey: .producationCountries)
        releaseDate          = try container.decode(Date.self, forKey: .releaseDate)
        revenue              = try container.decode(Int.self, forKey: .revenue)
        runTime              = try container.decode(Int.self, forKey: .runTime)
        spokenLanguages      = try container.decode(Language.self, forKey: .spokenLanguages)
        status               = try container.decode(Status.self, forKey: .status)
        tagLine              = try container.decode(String.self, forKey: .tagLine)
        tagLine              = try container.decode(String.self, forKey: .tagLine)
        video                = try container.decode(Bool.self, forKey: .video)
        voteAverage          = try container.decode(UInt.self, forKey: .voteAverage)
        voteCount            = try container.decode(Int.self, forKey: .voteCount)

        
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

enum Status: String, Codable {
    case Rumored, Planned,InProduction, PostProduction, Released, Canceled
}

