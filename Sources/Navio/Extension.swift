//
//  Extension.swift
//  Navio
//
//  Created by Htet Aung Shine on 14/7/25.
//

import SwiftUI

extension NavioCoordinator where Route: DeepLinkable {
    public func handleDeepLink(_ url: URL) {
        if let route = Route.from(url: url) {
            push(route)
        }
    }
}
