//
//  Slice.swift
//  Randoman
//
//  Created by NickMeepo on 2021/2/25.
//

import Foundation

public final class RandomDefaultIndexSlice<Container>: Randomizable where
    Container: Collection,
    Container.Indices == DefaultIndices<Container> {

    public typealias RandomValue = Container.SubSequence

    public func single() -> Container.SubSequence {
        guard let range = Random.range(in: self.collection).single() else { return self.empty }
        return self.collection[range]
    }

    public func single<G>(using generator: inout G) -> Container.SubSequence where G: RandomNumberGenerator {
        guard let range = Random.range(in: self.collection).single(using: &generator) else { return self.empty }
        return self.collection[range]
    }

    internal var empty: Container.SubSequence {
        self.collection[self.collection.startIndex..<self.collection.startIndex]
    }

    internal let collection: Container

    internal init(collection: Container) {
        self.collection = collection
    }

}

public final class RandomStridableIndexSlice<Container>: Randomizable where
    Container: Collection,
    Container.Index: Strideable,
    Container.Index.Stride: SignedInteger {

    public typealias RandomValue = Container.SubSequence

    public func single() -> Container.SubSequence {
        guard let range = Random.range(in: self.collection).single() else { return self.empty }
        return self.collection[range]
    }

    public func single<G>(using generator: inout G) -> Container.SubSequence where G: RandomNumberGenerator {
        guard let range = Random.range(in: self.collection).single(using: &generator) else { return self.empty }
        return self.collection[range]
    }

    internal var empty: Container.SubSequence {
        self.collection[self.collection.startIndex..<self.collection.startIndex]
    }

    internal let collection: Container

    internal init(collection: Container) {
        self.collection = collection
    }

}
