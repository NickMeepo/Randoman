//
//  RandomRange.swift
//  Randoman
//
//  Created by NickMeepo on 2021/2/23.
//

import Foundation

protocol RandomParaRange { }

extension Range: RandomParaRange { }

extension ClosedRange: RandomParaRange { }

extension RandomParaRange {
    func isValid<T>(ofType type: T.Type) -> Bool where T: Comparable {
        switch self {
        case let range as ClosedRange<T>:
            return range.lowerBound <= range.upperBound
        case let range as Range<T>:
            return range.lowerBound < range.upperBound
        default:
            return false
        }
    }
}
