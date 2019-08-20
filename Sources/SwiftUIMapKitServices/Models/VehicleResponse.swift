//
//  VehicleLocation.swift
//  SwiftUIMapKit
//
//  Created by Sasha Prokhorenko on 18.08.19.
//  Copyright © 2019 Sasha Prokhorenko. All rights reserved.
//

import Foundation

public struct VehicleResponse: Codable, Equatable {
	// MARK: - Instance Properties
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
	
	// MARK: - Initialization
	
	public init(id: Int,
							name: String,
							description: String,
							latitude: Double,
							longitude: Double,
							batteryLevel: Double,
							timestamp: String,
							price: Double,
							priceTime: Double,
							currency: String) {
		self.id = id
		self.name = name
		self.description = description
		self.latitude = latitude
		self.longitude = longitude
		self.batteryLevel = batteryLevel
		self.timestamp = timestamp
		self.price = price
		self.priceTime = priceTime
		self.currency = currency
	}
}
