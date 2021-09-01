//
//  NormalSampling.swift
//  Randoman
//
//  Created by 韩钢 on 2021/9/1.
//

import Foundation

public final class RandomNormalSampling: Randomizable {

    public typealias RandomValue = Double

    public func single() -> Double {
//        let exp = Random.sample.exponential(lamda: 1).single()
//        var value = Double.random(in: 0...1)
//        let threshold = pow(Random.Constant.e, -(exp - 1) * (exp - 1) / 2.0)
//        while value > threshold {
//            value = Double.random(in: 0...1)
//        }
//        return Bool.random() ? value : -value
        
        Random.Sampling.normalXY(
            averageX: average,
            varianceX: variance,
            averageY: 0,
            varianceY: 1).single().x
    }

    public func single<G>(using generator: inout G) -> Double where G: RandomNumberGenerator {
//        let exp = Random.sample.exponential(lamda: 1).single(using: &generator)
//        var value = Double.random(in: 0...1, using: &generator)
//        let threshold = pow(Random.Constant.e, -(exp - 1) * (exp - 1) / 2.0)
//        while value > threshold {
//            value = Double.random(in: 0...1)
//        }
//        return Bool.random(using: &generator) ? value : -value
        
        Random.Sampling.normalXY(
            averageX: average,
            varianceX: variance,
            averageY: 0,
            varianceY: 1).single(using: &generator).x
    }
    
    public func batch(count: Int) -> [Double] {
        if count == 0 {
            return []
        }
        var res = [Double]()
        res.reserveCapacity(count)
        if count & 1 == 0 {
            // 2, 4, 6, ...
            for _ in 1...(count / 2) {
                let tmp = Random.Sampling.normalXY(
                    averageX: average,
                    varianceX: variance,
                    averageY: average,
                    varianceY: variance).single()
                res.append(tmp.x)
                res.append(tmp.y)
            }
            return res
        }
        if count > 1 {
            // 3, 5, ...
            for _ in 1...((count - 1) / 2) {
                let tmp = Random.Sampling.normalXY(
                    averageX: average,
                    varianceX: variance,
                    averageY: average,
                    varianceY: variance).single()
                res.append(tmp.x)
                res.append(tmp.y)
            }
        }
        res.append(single())
        return res
    }
    
    public func batch<G>(count: Int, using generator: inout G) -> [Double] where G: RandomNumberGenerator {
        if count == 0 {
            return []
        }
        var res = [Double]()
        res.reserveCapacity(count)
        if count & 1 == 0 {
            // 2, 4, 6, ...
            for _ in 1...(count / 2) {
                let tmp = Random.Sampling.normalXY(
                    averageX: average,
                    varianceX: variance,
                    averageY: average,
                    varianceY: variance).single(using: &generator)
                res.append(tmp.x)
                res.append(tmp.y)
            }
            return res
        }
        if count > 1 {
            // 3, 5, ...
            for _ in 1...((count - 1) / 2) {
                let tmp = Random.Sampling.normalXY(
                    averageX: average,
                    varianceX: variance,
                    averageY: average,
                    varianceY: variance).single(using: &generator)
                res.append(tmp.x)
                res.append(tmp.y)
            }
        }
        res.append(single(using: &generator))
        return res
    }

    public let average: Double
    
    public let variance: Double

    internal init(average: Double, variance: Double) {
        self.average = average
        self.variance = variance
    }

}
