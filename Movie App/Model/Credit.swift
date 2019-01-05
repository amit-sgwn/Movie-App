//
//  Credit.swift
//  Movie App
//
//  Created by Amit Kumar on 04/01/19.
//  Copyright © 2019 IndusUnicorn. All rights reserved.
//

import Foundation

struct Credit: Codable {
    
}


struct Media: Codable {
    var id: Int?
    var name: String?
    var originalName: String?
    var character: String?
    var episodes: [Episode]?
    var seasons: [Season]?
    
    enum MediaCodingKeys: String, CodingKey {
        case id
        case name
        case originalName = "original_name"
        case character
        case episodes
        case seasons
    }
    
    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: MediaCodingKeys.self)

        id = try container.decode(Int.self, forKey: .id)
        name = try container.decode(String.self, forKey: .name)
        originalName = try container.decode(String.self, forKey: .originalName)
        character = try container.decode(String.self, forKey: .character)
        episodes = try container.decode([Episode].self, forKey: .episodes)
        seasons = try container.decode([Season].self, forKey: .seasons)

    }
}


struct Season: Codable {
    var airDate: String?
    var posterPath: String?
    var seasonNumber: Int?
    
    enum SeasonCodingKeys: String, CodingKey {
        case airDate = "air_date"
        case posterPath = " poster_path"
        case seasonNumber = "season_number"
    }
    
    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: SeasonCodingKeys.self)
        
        airDate = try container.decode(String.self, forKey: .airDate)
        posterPath = try container.decode(String.self, forKey: .posterPath)
        seasonNumber = try container.decode(Int.self, forKey: .seasonNumber)
    }
}


struct Person: Codable {
    var name: String?
    var id: Int?
}


struct Episode: Codable {
    
}
