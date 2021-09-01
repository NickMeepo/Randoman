//
//  Locale.swift
//  Randoman
//
//  Created by NickMeepo on 2021/2/24.
//

import Foundation

public final class RandomLocale: Randomizable {

    public typealias RandomValue = Locale

    public func single() -> Locale {
        Locale(identifier: identifiers.randomElement()!)
    }

    public func single<G>(using generator: inout G) -> Locale where G: RandomNumberGenerator {
        Locale(identifier: identifiers.randomElement(using: &generator)!)
    }

    internal lazy var identifiers = Locale.availableIdentifiers

}
