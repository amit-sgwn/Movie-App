//
//  ApiManager.swift
//  Movie App
//
//  Created by Amit Kumar on 16/10/18.
//  Copyright © 2018 IndusUnicorn. All rights reserved.
//

import Foundation

class NetworkManager {
    
    // MARK: - Properties
    
    static let shared = NetworkManager(baseURL: Urls.BASE_URL)
    
    // MARK: -
    
    let baseURL: String
    
    // Initialization
    
    private init(baseURL: String) {
        self.baseURL = baseURL
    }
    
    //MARK:- Utility methods
    func getSessionId()  {
        
    }
    
}

