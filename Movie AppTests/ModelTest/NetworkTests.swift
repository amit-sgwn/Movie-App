//
//  NetworkTests.swift
//  Movie AppTests
//
//  Created by Amit Kumar on 19/04/19.
//  Copyright © 2019 IndusUnicorn. All rights reserved.
//

import XCTest
@testable import Movie_App

class NetworkTests: XCTestCase {

    let validJson = """
{
"headquarters": "Los Gatos, California, United States",
"homepage": "http://www.netflix.com",
"id": 213,
"name": "Netflix",
"origin_country": "US"
}
""".data(using: .utf8)!
    
    let invalidJson = """
{
"headquarters": "Los Gatos, California, United States",
"homepage": "http://www.netflix.com",
"name": "Netflix",
"origin_country": "US"
}
""".data(using: .utf8)!
    
    let failureJson = """
{
"status_message": "Invalid API key: You must be granted a valid key.",
"success": false,
"status_code": 7
}
""".data(using: .utf8)!
    
    override func setUp() {
        super.setUp()
    }

    override func tearDown() {
        super.tearDown()
    }

    func testNetworkInitWithValidJsonReturnsSuccess() {
        let network = try? JSONDecoder().decode(Network.self, from: validJson)
        XCTAssertNotNil(network)
    }
    
    func testNetworkWithInvalidJsonInitFail() {
        let network = try? JSONDecoder().decode(Network.self, from: invalidJson)
        XCTAssertNil(network)
    }
    
    //MARK: Failure cases
    func test_401_ResponseRecieved() {
        let network = try? JSONDecoder().decode(Network.self, from: failureJson)
        XCTAssertNil(network)
    }
}
