//
//  ExponentialSampling.swift
//  Randoman
//
//  Created by 韩钢 on 2021/8/27.
//

import Foundation

public final class RandomExponentialSampling: Randomizable {

    public typealias RandomValue = Double

    public func single() -> Double {
        generateSingle(from: .random(in: 0...1))
    }

    public func single<G>(using generator: inout G) -> Double where G: RandomNumberGenerator {
        generateSingle(from: .random(in: 0...1, using: &generator))
    }

    public var average: Double {
        self.lamda.isNormal ? 1 / self.lamda : .greatestFiniteMagnitude
    }

    public var variance: Double {
        self.lamda.isNormal ? 1 / (self.lamda * self.lamda) : .greatestFiniteMagnitude
    }

    public let lamda: Double
    
    private func generateSingle(from prop: Double) -> Double {
        self.lamda.isNormal ? -log(prop) / self.lamda : .greatestFiniteMagnitude
    }

    internal init(lamda: Double) {
        self.lamda = lamda
    }

}
