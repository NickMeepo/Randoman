//
//  CGVector.swift
//  Randoman
//
//  Created by NickMeepo on 2021/2/25.
//

#if canImport(CoreGraphics)
import Foundation
import CoreGraphics

public final class RandomCGVector: Randomizable {

    public typealias RandomValue = CGVector

    public func single() -> CGVector {
        CGVector(
            dx: CGFloat.random(in: self.dxRange),
            dy: CGFloat.random(in: self.dyRange))
    }

    public func single<G>(using generator: inout G) -> CGVector where G: RandomNumberGenerator {
        CGVector(
            dx: CGFloat.random(in: self.dxRange, using: &generator),
            dy: CGFloat.random(in: self.dyRange, using: &generator))
    }

    internal let dxRange: ClosedRange<CGFloat>

    internal let dyRange: ClosedRange<CGFloat>

    internal init(dxRange: ClosedRange<CGFloat>, dyRange: ClosedRange<CGFloat>) {
        self.dxRange = dxRange
        self.dyRange = dyRange
    }

}
#endif
