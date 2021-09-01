//
//  BinomialSampling.swift
//  Randoman
//
//  Created by NickMeepo on 2021/3/26.
//

import Foundation

public final class RandomBinomialSampling: Randomizable {

    public typealias RandomValue = Int

    public func single() -> Int {
        generateSingle(from: .random(in: 0...1))
    }

    public func single<G>(using generator: inout G) -> Int where G: RandomNumberGenerator {
        generateSingle(from: .random(in: 0...1, using: &generator))
    }

    public var average: Double {
        Double(self.total) * self.successProp
    }

    public var variance: Double {
        self.average * (1 - self.successProp)
    }

    public let successProp: Double

    public let total: Int
    
    private func generateSingle(from prop: Double) -> Int {
        if self.successProp.isEqual(to: 1) {
            return self.total
        }
        var curValue = 0
        var curProp = pow(1 - self.successProp, Double(self.total))
        var curAccumelatedProp = curProp
        while prop > curAccumelatedProp {
            curProp = self.baseValue * curProp * Double(self.total - curValue) / Double(curValue + 1)
            curAccumelatedProp += curProp
            curValue += 1
        }
        return curValue
    }

    private lazy var baseValue: Double = self.successProp / (1 - self.successProp)

    internal init(total: Int, successProp: Double) {
        self.total = max(0, total)
        self.successProp = max(0, min(1, successProp))
    }

}
