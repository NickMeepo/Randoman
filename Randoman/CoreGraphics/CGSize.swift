//
//  CGSize.swift
//  Randoman
//
//  Created by NickMeepo on 2021/2/25.
//

#if canImport(CoreGraphics)
import Foundation
import CoreGraphics

public final class RandomCGSize: Randomizable {

    public typealias RandomValue = CGSize

    public func single() -> CGSize {
        CGSize(
            width: CGFloat.random(in: 0...bounding.width),
            height: CGFloat.random(in: 0...bounding.height))
    }

    public func single<G>(using generator: inout G) -> CGSize where G: RandomNumberGenerator {
        CGSize(
            width: CGFloat.random(in: 0...bounding.width, using: &generator),
            height: CGFloat.random(in: 0...bounding.height, using: &generator))
    }

    internal let bounding: CGSize

    internal init(bounding: CGSize) {
        self.bounding = bounding
    }

}
#endif
