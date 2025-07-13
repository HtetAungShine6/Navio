// The Swift Programming Language
// https://docs.swift.org/swift-book

import SwiftUI

@available(iOS 16.0, *)
@propertyWrapper
public struct Navio<Route: Hashable>: DynamicProperty {
    @StateObject private var coordinator = NavioCoordinator<Route>()

    @MainActor
    public var wrappedValue: NavioCoordinator<Route> {
        coordinator
    }

    public init() {}
}
