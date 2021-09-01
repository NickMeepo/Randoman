//
//  Integers.swift
//  Randoman
//
//  Created by NickMeepo on 2021/2/23.
//

import Foundation

public final class RandomInteger<T>: Randomizable where T: FixedWidthInteger {

    public typealias RandomValue = T

    public func single() -> T {
        switch self.range {
        case let realRange as ClosedRange<T>:
            return T.random(in: realRange)
        case let realRange as Range<T>:
            return T.random(in: realRange)
        default:
            return T.random(in: T.min...T.max)
        }
    }

    public func single<G>(using generator: inout G) -> T where G: RandomNumberGenerator {
        switch self.range {
        case let realRange as ClosedRange<T>:
            return T.random(in: realRange, using: &generator)
        case let realRange as Range<T>:
            return T.random(in: realRange, using: &generator)
        default:
            return T.random(in: T.min...T.max, using: &generator)
        }
    }

    internal let range: RandomParaRange

    internal init(range: RandomParaRange) {
        guard range.isValid(ofType: T.self) else {
            fatalError(Random.Error.rangeBound)
        }
        self.range = range
    }

}
