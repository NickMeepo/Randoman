//
//  TimeZone.swift
//  Randoman
//
//  Created by NickMeepo on 2021/2/24.
//

import Foundation

public final class RandomTimeZone: Randomizable {

    public typealias RandomValue = TimeZone

    public func single() -> TimeZone {
        TimeZone(identifier: self.identifiers.randomElement()!)!
    }

    public func single<G>(using generator: inout G) -> TimeZone where G: RandomNumberGenerator {
        TimeZone(identifier: self.identifiers.randomElement(using: &generator)!)!
    }

    internal lazy var identifiers = TimeZone.knownTimeZoneIdentifiers

}
