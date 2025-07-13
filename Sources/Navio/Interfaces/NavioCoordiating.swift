//
//  NavioCoordiating.swift
//  Navio
//
//  Created by Htet Aung Shine on 14/7/25.
//

import SwiftUI

public protocol NavioCoordinating: ObservableObject {
    associatedtype Route: Hashable

    var path: NavigationPath { get set }

    func push(_ route: Route)
    func pop()
    func popToRoot()
    func reset()
}
