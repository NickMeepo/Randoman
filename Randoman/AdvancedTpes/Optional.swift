//
//  Optional.swift
//  Randoman
//
//  Created by NickMeepo on 2021/2/24.
//

import Foundation

public final class RandomOptional<T>: Randomizable {

    public typealias RandomValue = T?

    public func single() -> T? {
        Bool.random() ? nil : collection.randomElement()
    }

    public func single<G>(using generator: inout G) -> T? where G: RandomNumberGenerator {
        Bool.random(using: &generator) ? nil : collection.randomElement(using: &generator)
    }

    internal let collection: AnyCollection<T>

    internal init(collection: AnyCollection<T>) {
        self.collection = collection
    }

}
