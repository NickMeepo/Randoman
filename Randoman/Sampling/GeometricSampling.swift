//
//  GeometricSampling.swift
//  Randoman
//
//  Created by NickMeepo on 2021/3/3.
//

import Foundation

public final class RandomGeometricSampling: Randomizable {
    
    public typealias RandomValue = Int
    
    public func single() -> Int {
        generateSingle(from: .random(in: 0...1))
    }
    
    public func single<G>(using generator: inout G) -> Int where G : RandomNumberGenerator {
        generateSingle(from: .random(in: 0...1, using: &generator))
    }
    
    private func generateSingle(from prop: Double) -> Int {
        if self.successProp.isEqual(to: 1) {
            return 1
        }
        if self.baseValue.isZero {
            return .max
        }
        return Int(log(prop) / self.baseValue) + 1
    }
    
    public var average: Double {
        successProp.isZero ? .infinity : Double(1 / successProp)
    }
    
    public var variance: Double {
        successProp.isZero ? .infinity : ((1 - successProp) / (successProp * successProp))
    }
    
    public let successProp: Double
        
    internal lazy var baseValue = log(1 - successProp)
    
    internal init(successProp: Double) {
        self.successProp = max(0, min(1, successProp))
    }
    
}
