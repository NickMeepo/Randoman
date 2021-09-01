//
//  CGPoint.swift
//  Randoman
//
//  Created by NickMeepo on 2021/2/25.
//

#if canImport(CoreGraphics)
import Foundation
import CoreGraphics

public final class RandomCGPoint: Randomizable {

    public typealias RandomValue = CGPoint

    public func single() -> CGPoint {
        CGPoint(
            x: CGFloat.random(in: self.bounding.minX...self.bounding.maxX),
            y: CGFloat.random(in: self.bounding.minY...self.bounding.maxY))
    }

    public func single<G>(using generator: inout G) -> CGPoint where G: RandomNumberGenerator {
        CGPoint(
            x: CGFloat.random(in: self.bounding.minX...self.bounding.maxX, using: &generator),
            y: CGFloat.random(in: self.bounding.minY...self.bounding.maxY, using: &generator))
    }

    internal let bounding: CGRect

    internal init(bounding: CGRect) {
        self.bounding = bounding
    }

}
#endif
