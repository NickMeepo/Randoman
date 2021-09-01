//
//  Randomizable.swift
//  Randoman
//
//  Created by NickMeepo on 2021/2/23.
//

import Foundation

public protocol Randomizable {
    associatedtype RandomValue
    func single() -> RandomValue
    func single<G>(using generator: inout G) -> RandomValue where G: RandomNumberGenerator
}

public extension Randomizable {

    func batch(count: Int) -> [RandomValue] {
        guard count > 0 else { return [] }
        var res = [RandomValue]()
        res.reserveCapacity(count)
        (0..<count).forEach { _ in
            res.append(self.single())
        }
        return res
    }

    func batch<G>(count: Int, using generator: inout G) -> [RandomValue] where G: RandomNumberGenerator {
        guard count > 0 else { return [] }
        var res = [RandomValue]()
        res.reserveCapacity(count)
        (0..<count).forEach { _ in
            res.append(self.single(using: &generator))
        }
        return res
    }

    var targetType: RandomValue.Type {
        RandomValue.self
    }

}
