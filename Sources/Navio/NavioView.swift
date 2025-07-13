//
//  NavioView.swift
//  Navio
//
//  Created by Htet Aung Shine on 13/7/25.
//

import SwiftUI

@available(iOS 16.0, *)
public struct NavioView<Root: View, Route: Hashable, Destination: View, Coordinator: NavioCoordinating>: View {
    @ObservedObject private var coordinator: Coordinator
    private let root: Root
    private let destinationBuilder: (Coordinator.Route) -> Destination

    public init(
        _ coordinator: Coordinator,
        @ViewBuilder root: () -> Root,
        @ViewBuilder route: @escaping (Coordinator.Route) -> Destination
    ) {
        self.coordinator = coordinator
        self.root = root()
        self.destinationBuilder = route
    }

    public var body: some View {
        NavigationStack(path: $coordinator.path) {
            root.navigationDestination(for: Coordinator.Route.self) { route in
                destinationBuilder(route)
            }
        }
    }
}
