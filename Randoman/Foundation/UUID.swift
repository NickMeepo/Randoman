//
//  UUID.swift
//  Randoman
//
//  Created by NickMeepo on 2021/2/24.
//

import Foundation

public final class RandomUUID: Randomizable {

    public typealias RandomValue = String

    public func single() -> String {
        shorten ?
            UUID().uuidString.replacingOccurrences(of: "-", with: "") :
            UUID().uuidString
    }

    public func single<G>(using generator: inout G) -> String where G: RandomNumberGenerator {
        single()
    }

    internal let shorten: Bool

    internal init(shorten: Bool) {
        self.shorten = shorten
    }

}
