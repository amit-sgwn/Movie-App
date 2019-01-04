//
//  MovieDataBaseService.swift
//  Movie App
//
//  Created by Amit Kumar on 18/10/18.
//  Copyright © 2018 IndusUnicorn. All rights reserved.
//

import Foundation
import Moya


// This is target Api
public enum MovieDB {
    //1
    static private let publicKey = ""  //put your keys here
    static private let privateKey = "" // put your private keys here
    // 2
    case movie(String)
}


extension MovieDB: TargetType {
    
    // Base Url
    public var baseUrl: URL {
        return URL(string: "https://api.themoviedb.org/3/")
    }
    
    public var path: String {
        switch self {
        case .movie(let movieId):
                return "/movie/\(movieId)"
        }
    }
}
