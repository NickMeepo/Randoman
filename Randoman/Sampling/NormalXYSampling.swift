//
//  NormalXYSampling.swift
//  Randoman
//
//  Created by 韩钢 on 2021/9/1.
//

import Foundation

public final class RandomNormalXYSampling: Randomizable {

    public typealias RandomValue = (x: Double, y: Double)

    public func single() -> (x: Double, y: Double) {
        let u1 = Double.random(in: 0...1)
        let u2 = Double.random(in: 0...1)
        return (sqrt(-2 * log(u1)) * cos(2 * Random.Constant.pi * u2) * deviationX + averageX,
                sqrt(-2 * log(u1)) * sin(2 * Random.Constant.pi * u2) * deviationY + averageY)
    }

    public func single<G>(using generator: inout G) -> (x: Double, y: Double) where G: RandomNumberGenerator {
        let u1 = Double.random(in: 0...1, using: &generator)
        let u2 = Double.random(in: 0...1, using: &generator)
        return (sqrt(-2 * log(u1)) * cos(2 * Random.Constant.pi * u2) * deviationX + averageX,
                sqrt(-2 * log(u1)) * sin(2 * Random.Constant.pi * u2) * deviationY + averageY)
    }

    public let averageX: Double
    
    public let varianceX: Double
    
    public let averageY: Double
    
    public let varianceY: Double
    
    private lazy var deviationX: Double = sqrt(varianceX)
    
    private lazy var deviationY: Double = sqrt(varianceY)

    internal init(averageX: Double, varianceX: Double, averageY: Double, varianceY: Double) {
        self.averageX = averageX
        self.varianceX = max(0, varianceX)
        self.averageY = averageY
        self.varianceY = max(0, varianceY)
    }

}
