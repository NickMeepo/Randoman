//
//  AdvancedTypsTests.swift
//  RandomanTests
//
//  Created by NickMeepo on 2021/2/26.
//

import XCTest
@testable import Randoman

class AdvancedTypsTests: XCTestCase {
    
    func testOpttional() throws {
        print("Optional: \(Random.optional(value: 1).batch(count: batchCount))")
        print("Optional: \(Random.optional(from: array).batch(count: batchCount))")
        print("Optional: \(Random.optional(from: []).batch(count: batchCount))")
    }
    
    func testResult() throws {
        print("Result: \(Random.result(success: 1, failure: OneError.ping).batch(count: batchCount))")
        print("Result: \(Random.result(from: array, failures: OneError.allCases).batch(count: batchCount))")
        print("Result: \(Random.result(from: array, failures: EmptyError.allCases).batch(count: batchCount))")
        print("Result: \(Random.result(from: [], failures: OneError.allCases).batch(count: batchCount))")
    }
    
    func testEnum() throws {
        print("Enum: \(Random.case(in: Gender.self).batch(count: batchCount).map { $0.rawValue })")
        print("Enum Error: \(Random.case(in: OneError.self).batch(count: batchCount).compactMap { $0 })")
    }
    
    func testTuples() throws {
        let t2 = Random.tuple(from: array, string).single()
        XCTAssertTrue(array.contains(t2.0) && string.contains(t2.1))
        print("tuple2: \(t2)")
        
        let t3 = Random.tuple(from: array, string, subString).single()
        XCTAssertTrue(array.contains(t3.0) && string.contains(t3.1) && subString.contains(t3.2))
        print("tuple3: \(t3)")
        
        let t4 = Random.tuple(from: array, string, subString, countableRange).single()
        XCTAssertTrue(array.contains(t4.0) && string.contains(t4.1) && subString.contains(t4.2) && countableRange.contains(t4.3))
        print("tuple4: \(t4)")
    }
    
}
