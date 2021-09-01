//
//  CGRect.swift
//  Randoman
//
//  Created by NickMeepo on 2021/2/25.
//

#if canImport(CoreGraphics)
import Foundation
import CoreGraphics

public final class RandomCGRect: Randomizable {

    public typealias RandomValue = CGRect

    public func single() -> CGRect {
        let x1 = CGFloat.random(in: self.bounding.minX...self.bounding.maxX)
        let x2 = CGFloat.random(in: self.bounding.minX...self.bounding.maxX)
        let y1 = CGFloat.random(in: self.bounding.minY...self.bounding.maxY)
        let y2 = CGFloat.random(in: self.bounding.minY...self.bounding.maxY)
        return rectFrom(x1: x1, x2: x2, y1: y1, y2: y2)
    }

    public func single<G>(using generator: inout G) -> CGRect where G: RandomNumberGenerator {
        let x1 = CGFloat.random(in: self.bounding.minX...self.bounding.maxX, using: &generator)
        let x2 = CGFloat.random(in: self.bounding.minX...self.bounding.maxX, using: &generator)
        let y1 = CGFloat.random(in: self.bounding.minY...self.bounding.maxY, using: &generator)
        let y2 = CGFloat.random(in: self.bounding.minY...self.bounding.maxY, using: &generator)
        return rectFrom(x1: x1, x2: x2, y1: y1, y2: y2)
    }

    internal func rectFrom(x1: CGFloat, x2: CGFloat, y1: CGFloat, y2: CGFloat) -> CGRect {
        CGRect(
            x: min(x1, x2),
            y: min(y1, y2),
            width: abs(x1 - x2),
            height: abs(y1 - y2))
    }

    internal let bounding: CGRect

    internal init(bounding: CGRect) {
        self.bounding = bounding
    }

}
#endif
