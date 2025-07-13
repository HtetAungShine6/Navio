//
//  NavioView.swift
//  Navio
//
//  Created by Htet Aung Shine on 13/7/25.
//

import SwiftUI

@available(iOS 16.0, *)
public struct NavioView<Root: View, Route: Hashable, Destination: View>: View {
    @ObservedObject private var coordinator: NavioCoordinator<Route>
    private let root: Root
    private let destinationBuilder: (Route) -> Destination

    public init(
        _ coordinator: NavioCoordinator<Route>,
        @ViewBuilder root: () -> Root,
        @ViewBuilder route: @escaping (Route) -> Destination
    ) {
        self.coordinator = coordinator
        self.root = root()
        self.destinationBuilder = route
    }

    public var body: some View {
        NavigationStack(path: $coordinator.path) {
            root
                .navigationDestination(for: Route.self) { route in
                    destinationBuilder(route)
                }
        }
    }
}
