//
//  RegexTests.swift
//  RandomanTests
//
//  Created by NickMeepo on 2021/2/26.
//

import XCTest
@testable import Randoman

class RegexTests: XCTestCase {
    
    func testRegex() throws {
        print("Regex Pattern: \(pattern)")
        print("Regex: \(Random.string(match: pattern).single())")
        print("Regex: \(Random.string(match: pattern).batch(count: 1))")
        print("Regex: \(Random.string(match: pattern).batch(count: batchCount))")
        
        let tests = Random.string(match: pattern).batch(count: batchCount)
        for test in tests {
            let range = test.range(of: pattern, options: .regularExpression)
            XCTAssertNotNil(range)
            XCTAssertTrue(test == test[range!])
        }
    }

    func testPerformanceRegex() throws {
        self.measure {
            _=Random.string(match: pattern).batch(count: 100000)
        }
    }
    
}
