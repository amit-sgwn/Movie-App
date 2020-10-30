//
//  StatusResponse.swift
//  Movie App
//
//  Created by Amit Kumar on 19/04/19.
//  Copyright © 2019 IndusUnicorn. All rights reserved.
//

import Foundation

struct ResponseStatus {
    let statusMessage: String
    let success: Bool
    let statusCode: StatusCode
}


enum StatusCode {
    case OK
    case Unauthorized
    case NotFound
    
    var code : Int {
        switch self {
        case .OK:
            return 200
        case .NotFound:
            return 7
        case .Unauthorized:
            return 34
      
        }
    }
}
