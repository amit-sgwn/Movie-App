//
//  Season.swift
//  Movie App
//
//  Created by Amit Kumar on 05/01/19.
//  Copyright © 2019 IndusUnicorn. All rights reserved.
//

import Foundation


struct Season: Codable {
    var airDate: String?
    var posterPath: String?
    var seasonNumber: Int?
    var uniqueId: String
    var id: Int
    var name: String
    var episodes: [Episode]?
    var overView: String?
    
    
    enum SeasonCodingKeys: String, CodingKey {
        case airDate      = "air_date"
        case posterPath   = " poster_path"
        case seasonNumber = "season_number"
        case id           = "id"
        case uniqueId     = "_id"
        case name
        case overView     = "overview"
        case episodes
    }
    
    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: SeasonCodingKeys.self)
        
        airDate      = try container.decode(String.self, forKey: .airDate)
        posterPath   = try container.decode(String.self, forKey: .posterPath)
        seasonNumber = try container.decode(Int.self, forKey: .seasonNumber)
        id           = try container.decode(Int.self, forKey: .id)
        uniqueId     = try container.decode(String.self, forKey: .uniqueId)
        name         = try container.decode(String.self, forKey: .name)
        overView     = try container.decode(String.self, forKey: .overView)
        episodes     = try container.decode([Episode].self, forKey: .episodes)

    }
}
