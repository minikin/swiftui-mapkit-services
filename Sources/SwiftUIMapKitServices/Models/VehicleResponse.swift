//
//  VehicleLocation.swift
//  SwiftUIMapKit
//
//  Created by Sasha Prokhorenko on 18.08.19.
//  Copyright © 2019 Sasha Prokhorenko. All rights reserved.
//

import Foundation

public struct VehicleResponse: Codable, Equatable {
    public let id: Int
    public let name: String
    public let description: String
    public let latitude: Double
    public let longitude: Double
    public let batteryLevel: Double
    public let timestamp: String
    public let price: Double
    public let priceTime: Double
    public let currency: String
}
