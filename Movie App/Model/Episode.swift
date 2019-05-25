//
//  Episode.swift
//  Movie App
//
//  Created by Amit Kumar on 05/01/19.
//  Copyright © 2019 IndusUnicorn. All rights reserved.
//

import Foundation


struct Episode: Codable {
    
    var airDate: Date?
    var crew: [Crew]?
    var episodeNumber: Int?
    var guestStars: [Star]?
    var name: String?
    var overView: String?
    var id: Int?
    var producationCode: String?
    var seasonNumber: Int?
    var stillPath: String?
    var voteAverage: UInt?
    var voteCount: Int?
    
    enum EpisodeCodingKey: String, CodingKey {
        
        case airDate         = "air_date"
        case episodeNumber   = "episode_number"
        case producationCode = "production_code"
        case seasonNumber    = "season_number"
        case stillPath       = "still_path"
        case voteCount       = "vote_count"
        case voteAverage     = "vote_average"
        case crew
        case guestStars      = "guest_stars"
        case overView        = "overview"
        case name
        case id
        
    }
    
    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: EpisodeCodingKey.self)
        
        airDate         = try container.decode(Date.self, forKey: .airDate)
        episodeNumber   = try container.decode(Int.self, forKey: .episodeNumber)
        producationCode = try container.decode(String.self, forKey: .producationCode)
        seasonNumber    = try container.decode(Int.self, forKey: .seasonNumber)
        stillPath       = try container.decode(String.self, forKey: .stillPath)
        voteCount       = try container.decode(Int.self, forKey: .voteCount)
        voteAverage     = try container.decode(UInt.self, forKey: .voteAverage)
        crew            = try container.decode([Crew].self, forKey: .crew)
        guestStars      = try container.decode([Star].self, forKey: .guestStars)
        overView        = try container.decode(String.self, forKey: .overView)
        name            = try container.decode(String.self, forKey: .name)
        id              = try container.decode(Int.self, forKey: .id)

    }
}

