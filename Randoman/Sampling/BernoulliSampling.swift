//
//  BernoulliSampling.swift
//  Randoman
//
//  Created by NickMeepo on 2021/3/3.
//

import Foundation

public final class RandomBernoulliSampling: Randomizable {

    public typealias RandomValue = Bool

    public func single() -> Bool {
        Double.random(in: 0...1) <= self.successProp
    }

    public func single<G>(using generator: inout G) -> Bool where G: RandomNumberGenerator {
        Double.random(in: 0...1, using: &generator) <= self.successProp
    }

    public var average: Double {
        self.successProp
    }

    public var variance: Double {
        self.successProp * (1 - self.successProp)
    }

    public let successProp: Double

    internal init(successProp: Double) {
        self.successProp = max(0, min(1, successProp))
    }

}
