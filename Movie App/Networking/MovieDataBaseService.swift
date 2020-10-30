//
//  MovieDataBaseService.swift
//  Movie App
//
//  Created by Amit Kumar on 18/10/18.
//  Copyright © 2018 IndusUnicorn. All rights reserved.
//

//import Foundation
import Moya
import Alamofire

// This is target Api
public enum MovieDB {
    //1
    static private let publicKey = ""  //put your keys here
    static private let privateKey = "" // put your private keys here
    // 2
    case movie(String)
}


extension MovieDB: TargetType {
    public var baseURL: URL {
        return URL(string: "https://api.themoviedb.org/3/")!
    }
    
    public var method: Moya.Method {
        return .get
    }
    
    public var sampleData: Data {
        return Data()
    }
    
    public var task: Task {
        return .requestParameters(parameters: [:], encoding: URLEncoding.default)
    }
    
    public var headers: [String : String]? {
        return [:]
    }
    
    
    // Base Url
    public var baseUrl: URL {
        return URL(string: "https://api.themoviedb.org/3/")!
    }
    
    public var path: String {
        switch self {
        case .movie(let movieId):
                return "/movie/\(movieId)"
        }
    }
}
