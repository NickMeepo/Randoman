//
//  FoundationTests.swift
//  RandomanTests
//
//  Created by NickMeepo on 2021/2/26.
//

import XCTest
@testable import Randoman

class FoundationTests: XCTestCase {
    
    func testUUID() throws {
        print("UUID: \(Random.uuid().batch(count: batchCount))")
        print("UUID: \(Random.uuid(shorten: true).batch(count: batchCount))")
    }
    
    func testLocale() throws {
        let locales = Random.locale().batch(count: 100)
        print("Locale: \(locales.map({ $0.identifier }))")
    }
    
    func testTimeZone() throws {
        print("TimeZone: \(Random.timeZone().batch(count: batchCount).map { $0.identifier })")
    }
    
    func testTimeInterval() throws {
        let ts = Date().timeIntervalSince1970
        print("TimeInterval: \(Random.timeInterval(in: ts...(ts + 10000)).batch(count: batchCount).map { $0 })")
        print("TimeInterval: \(Random.timeInterval(in: ts..<(ts + 10000)).batch(count: batchCount).map { $0 })")
    }
    
}
