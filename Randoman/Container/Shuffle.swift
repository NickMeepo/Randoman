//
//  Shuffle.swift
//  Randoman
//
//  Created by NickMeepo on 2021/2/23.
//

import Foundation

public final class RandomShuffle<Element>: Randomizable {

    public typealias RandomValue = [Element]

    public func single() -> [Element] {
        sequence.shuffled()
    }

    public func single<G>(using generator: inout G) -> [Element] where G: RandomNumberGenerator {
        sequence.shuffled(using: &generator)
    }

    internal let sequence: AnySequence<Element>

    internal init(sequence: AnySequence<Element>) {
        self.sequence = sequence
    }

}

public final class RandomShuffleString<T>: Randomizable where T: StringProtocol {

    public typealias RandomValue = String

    public func single() -> String {
        String(self.string.shuffled())
    }

    public func single<G>(using generator: inout G) -> String where G: RandomNumberGenerator {
        String(self.string.shuffled(using: &generator))
    }

    internal let string: T

    internal init(string: T) {
        self.string = string
    }

}
