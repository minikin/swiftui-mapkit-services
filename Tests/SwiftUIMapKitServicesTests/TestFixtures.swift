//
//  TestFixtures.swift
//  
//
//  Created by Sasha Prokhorenko on 20.08.19.
//

import Foundation
@testable import SwiftUIMapKitServices

let vehicleFixtures = VehicleResponse(id: 1,
																			name: "000011",
																			description: "Electric Scooter",
																			latitude: 52.529077,
																			longitude: 13.416351,
																			batteryLevel: 98,
																			timestamp: "2019-03-10T09:31:56Z",
																			price: 15,
																			priceTime: 60,
																			currency: "€")

let exampleJSON = """
{
	"id": 1,
	"name": "000011",
	"description": "Electric Scooter",
	"latitude": 52.529077,
	"longitude": 13.416351,
	"batteryLevel": 98,
	"timestamp": "2019-03-10T09:31:56Z",
	"price": 15,
	"priceTime": 60,
	"currency": "€"
}
"""
