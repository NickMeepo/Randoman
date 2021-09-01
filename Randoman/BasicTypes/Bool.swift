//
//  Bool.swift
//  Randoman
//
//  Created by NickMeepo on 2021/2/23.
//

import Foundation

public final class RandomBool: Randomizable {

    public typealias RandomValue = Bool

    public func single() -> Bool {
        Bool.random()
    }

    public func single<G>(using generator: inout G) -> Bool where G: RandomNumberGenerator {
        Bool.random(using: &generator)
    }

}
