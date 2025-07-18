//
//  NavioCoordinator.swift
//  Navio
//
//  Created by Htet Aung Shine on 13/7/25.
//

import SwiftUI
 
@available(iOS 16.0, *)
public class NavioCoordinator<Route: Hashable>: NavioCoordinating {
    @Published public var path = NavigationPath()
 
    public func push(_ route: Route) {
        path.append(route)
    }
 
    public func pop() {
        path.removeLast()
    }
    
    public func popToRoot() {
        path.removeLast(path.count)
    }
 
    public func reset() {
        path = NavigationPath()
    }
}

