//
//  Resource.swift
//  SwiftUIMapKit
//
//  Created by Sasha Prokhorenko on 18.08.19.
//  Copyright © 2019 Sasha Prokhorenko. All rights reserved.
//

import Combine
import Foundation

public class Resource<A>: ObservableObject {
    // MARK: - Instance Properties

    // FIXME: - is there a better way to have an empty publisher?
    public var objectWillChange: AnyPublisher<A?, Never> = Publishers.Sequence<[A?], Never>(sequence: []).eraseToAnyPublisher()
		@Published public var value: A? = nil
    public let endpoint: Endpoint<A>
    private var firstLoad = true

    // MARK: - Initialization

    public init(endpoint: Endpoint<A>) {
        self.endpoint = endpoint
        objectWillChange = $value.handleEvents(receiveSubscription: { [weak self] _ in
            guard let s = self, s.firstLoad else { return }
            s.firstLoad = false
            s.reload()

        }).eraseToAnyPublisher()
    }

    // MARK: - Helpers

    public func reload() {
        URLSession.shared.load(endpoint) { result in
            DispatchQueue.main.async {
                self.value = try? result.get()
            }
        }
    }
}
