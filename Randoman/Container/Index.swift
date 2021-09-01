//
//  Index.swift
//  Randoman
//
//  Created by NickMeepo on 2021/2/24.
//

import Foundation

public final class RandomDefaultIndex<Container>: Randomizable where
    Container: Collection,
    Container.Indices == DefaultIndices<Container> {

    public typealias RandomValue = DefaultIndices<Container>.Index?

    public func single() -> DefaultIndices<Container>.Index? {
        self.indices.randomElement()
    }

    public func single<G>(using generator: inout G) -> DefaultIndices<Container>.Index? where G: RandomNumberGenerator {
        self.indices.randomElement(using: &generator)
    }

    internal let indices: DefaultIndices<Container>

    internal init(collection: Container) {
        self.indices = collection.indices
    }

}

public final class RandomStridableIndex<Container>: Randomizable where
    Container: Collection,
    Container.Index: Strideable,
    Container.Index.Stride: SignedInteger {

    public typealias RandomValue = Container.Index?

    public func single() -> Container.Index? {
        self.collection.indices.randomElement()
    }

    public func single<G>(using generator: inout G) -> Container.Index? where G: RandomNumberGenerator {
        self.collection.indices.randomElement(using: &generator)
    }

    internal let collection: Container

    internal init(collection: Container) {
        self.collection = collection
    }

}
