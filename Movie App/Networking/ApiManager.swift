//
//  ApiManager.swift
//  Movie App
//
//  Created by Amit Kumar on 16/10/18.
//  Copyright © 2018 Box8. All rights reserved.
//

import Foundation

class NetworkManager {
    
    // MARK: - Properties
    
    static let shared = NetworkManager(baseURL: API.baseURL)
    
    // MARK: -
    
    let baseURL: URL
    
    // Initialization
    
    private init(baseURL: URL) {
        self.baseURL = baseURL
    }
    
}
