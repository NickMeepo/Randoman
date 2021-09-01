//
//  Element.swift
//  Randoman
//
//  Created by NickMeepo on 2021/2/23.
//

import Foundation

public final class RandomElement<Element>: Randomizable {

    public typealias RandomValue = Element?

    public func single() -> Element? {
        self.collection.randomElement()
    }

    public func single<G>(using generator: inout G) -> Element? where G: RandomNumberGenerator {
        self.collection.randomElement(using: &generator)
    }

    internal let collection: AnyCollection<Element>

    internal init(collection: AnyCollection<Element>) {
        self.collection = collection
    }

}
