//
//  PoissonSampling.swift
//  Randoman
//
//  Created by NickMeepo on 2021/3/15.
//

import Foundation

public final class RandomPoissonSampling: Randomizable {

    public typealias RandomValue = Int

    public func single() -> Int {
        generateSingle(from: .random(in: 0...1))
    }

    public func single<G>(using generator: inout G) -> Int where G: RandomNumberGenerator {
        generateSingle(from: .random(in: 0...1, using: &generator))
    }

    public var average: Double {
        self.lamda
    }

    public var variance: Double {
        self.lamda
    }

    public let lamda: Double

    private func generateSingle(from prop: Double) -> Int {
        var curValue = 0
        var curProp = pow(Random.Constant.e, -self.lamda)
        var curAccumelatedProp = curProp
        while prop > curAccumelatedProp {
            curProp = self.lamda * curProp / (Double(curValue + 1))
            curAccumelatedProp += curProp
            curValue += 1
        }
        return curValue
    }

    internal init(lamda: Double) {
        self.lamda = max(0, lamda)
    }

}
