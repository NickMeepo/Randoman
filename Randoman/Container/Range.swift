//
//  Range.swift
//  Randoman
//
//  Created by NickMeepo on 2021/2/25.
//

import Foundation

public final class RandomDefaultIndexRange<Container>: Randomizable where
    Container: Collection,
    Container.Indices == DefaultIndices<Container> {

    public typealias RandomValue = ClosedRange<DefaultIndices<Container>.Index>?

    public func single() -> ClosedRange<DefaultIndices<Container>.Index>? {
        guard
            let point1 = self.indices.randomElement(),
            let point2 = self.indices.randomElement()
        else { return nil }
        return range(from: point1, and: point2)
    }

    public func single<G>(using generator: inout G) -> ClosedRange<DefaultIndices<Container>.Index>? where G: RandomNumberGenerator {
        guard
            let point1 = self.indices.randomElement(using: &generator),
            let point2 = self.indices.randomElement(using: &generator)
        else { return nil }
        return range(from: point1, and: point2)
    }

    internal func range(from point1: DefaultIndices<Container>.Index, and point2: DefaultIndices<Container>.Index) -> RandomValue {
        if point1 < point2 {
            return point1...point2
        } else {
            return point2...point1
        }
    }

    internal let indices: DefaultIndices<Container>

    internal init(collection: Container) {
        self.indices = collection.indices
    }

}

public final class RandomStridableIndexRange<Container>: Randomizable where
    Container: Collection,
    Container.Index: Strideable,
    Container.Index.Stride: SignedInteger {

    public typealias RandomValue = ClosedRange<Container.Index>?

    public func single() -> ClosedRange<Container.Index>? {
        guard
            let point1 = self.collection.indices.randomElement(),
            let point2 = self.collection.indices.randomElement()
        else { return nil }
        return range(from: point1, and: point2)
    }

    public func single<G>(using generator: inout G) -> ClosedRange<Container.Index>? where G: RandomNumberGenerator {
        guard
            let point1 = self.collection.indices.randomElement(using: &generator),
            let point2 = self.collection.indices.randomElement(using: &generator)
        else { return nil }
        return range(from: point1, and: point2)
    }

    internal func range(from point1: Container.Index, and point2: Container.Index) -> RandomValue {
        if point1 < point2 {
            return point1...point2
        } else {
            return point2...point1
        }
    }

    internal let collection: Container

    internal init(collection: Container) {
        self.collection = collection
    }

}
