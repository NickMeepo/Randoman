//
//  Enumeration.swift
//  Randoman
//
//  Created by NickMeepo on 2021/2/23.
//

import Foundation

public final class RandomEnum<T>: Randomizable where T: CaseIterable {

    public typealias RandomValue = T

    public func single() -> T {
        T.allCases.randomElement()!
    }

    public func single<G>(using generator: inout G) -> T where G: RandomNumberGenerator {
        T.allCases.randomElement(using: &generator)!
    }

    internal init(type: T.Type) {
        guard !type.allCases.isEmpty else {
            fatalError(Random.Error.enumerationNoneCase)
        }
    }

}
