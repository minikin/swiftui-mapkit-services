//
//  LocationManager.swift
//  SwiftUIMapKit
//
//  Created by Sasha Prokhorenko on 18.08.19.
//  Copyright © 2019 Sasha Prokhorenko. All rights reserved.
//

import MapKit

public struct LocationManager {
	
		 // MARK: - Instance Properties
	
    private let locationManager = CLLocationManager()
	
		// MARK: - Initialization
	
		public init () {}

    public func checkLocationAuthorizationStatus() {
        if locationManager.authorizationStatus() != .authorizedAlways {
            locationManager.requestAlwaysAuthorization()
        }
    }
}
