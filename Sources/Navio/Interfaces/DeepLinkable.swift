//
//  DeepLinkable.swift
//  Navio
//
//  Created by Htet Aung Shine on 14/7/25.
//

import SwiftUI

public protocol DeepLinkable {
    static func from(url: URL) -> Self?
}
