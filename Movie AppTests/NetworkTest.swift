//
//  NetworkTest.swift
//  Movie AppTests
//
//  Created by Amit Kumar on 08/01/19.
//  Copyright © 2019 IndusUnicorn. All rights reserved.
//

import XCTest
@testable import Movie_App

class NetworkTest: XCTestCase {

    var network: Network!
    
    override func setUp() {
        super.setUp()
        network = Network()
    }

    override func tearDown() {
        network = nil
        super.tearDown()
    }

 

}
