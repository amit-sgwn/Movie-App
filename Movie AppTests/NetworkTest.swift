//
//  NetworkTest.swift
//  Movie AppTests
//
//  Created by Amit Kumar on 08/01/19.
//  Copyright © 2019 IndusUnicorn. All rights reserved.
//
import Alamofire
import XCTest
@testable import Movie_App

class NetworkTest: XCTestCase {

    var network: Network!
    
    override func setUp() {
        super.setUp()
     //   network = Network()
    }

    override func tearDown() {
        network = nil
        super.tearDown()
    }

    func testNilCases() {
        XCTAssertNil(network)
    }
 
    func testDecodingStandardType() {
        let json = """
        {
            "headquarters": "Los Gatos, California, United States",
            "homepage": "http://www.netflix.com",
            "id": 213,
            "name": "Netflix",
            "origin_country": "US"
        }
        """.data(using: .utf8)!
        
        network = try! JSONDecoder().decode(Network.self, from: json)
        
        XCTAssertEqual(network.name, "Netflix")
        XCTAssertEqual(network.originCountry, "US")
        XCTAssertEqual(network.homePage, "http://www.netflix.com")
        XCTAssertEqual(network.headquarters, "Los Gatos, California, United States")
        XCTAssertEqual(network.id, 213)
        
    }

}
