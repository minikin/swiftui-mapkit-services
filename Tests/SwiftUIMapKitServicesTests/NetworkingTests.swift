//
//  NetworkingTests.swift
//  
//
//  Created by Sasha Prokhorenko on 20.08.19.
//

@testable import SwiftUIMapKitServices
import XCTest

final class NetworkingTests: XCTestCase {
    func testUrlWithoutParams() {
        let url = URL(string: "http://www.example.com/example.json")!
        let endpoint = Endpoint<[String]>(json: .get, url: url)
        XCTAssertEqual(url, endpoint.request.url)
    }

    func testUrlWithParams() {
        let url = URL(string: "http://www.example.com/example.json")!
        let endpoint = Endpoint<[String]>(json: .get, url: url, query: ["foo": "bar bar"])
        XCTAssertEqual(URL(string: "http://www.example.com/example.json?foo=bar%20bar")!, endpoint.request.url)
    }

    func testUrlAdditionalParams() {
        let url = URL(string: "http://www.example.com/example.json?abc=def")!
        let endpoint = Endpoint<[String]>(json: .get, url: url, query: ["foo": "bar bar"])
        XCTAssertEqual(URL(string: "http://www.example.com/example.json?abc=def&foo=bar%20bar")!, endpoint.request.url)
    }

    static var allTests = [
        ("testUrlWithoutParams", testUrlWithoutParams),
        ("testUrlWithParams", testUrlWithParams),
        ("testUrlAdditionalParams", testUrlAdditionalParams),
    ]
}
