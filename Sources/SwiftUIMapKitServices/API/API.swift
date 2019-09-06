//
//  API.swift
//  SwiftUIMapKit
//
//  Created by Sasha Prokhorenko on 18.08.19.
//  Copyright © 2019 Sasha Prokhorenko. All rights reserved.
//

import Foundation

public struct API {
    // MARK: - Instance Properties

    private var baseURL: URL

    public var vehicles: Endpoint<[VehicleResponse]> {
        return Endpoint(json: .get, url: baseURL.appendingPathComponent("vehicles"), decoder: decoder)
    }

    // MARK: - Initialization

    public init(baseURL: URL = URL(string: "https://minikin-json-server.herokuapp.com")!) {
        self.baseURL = baseURL
    }
}
