//
//  BasicTypesTests.swift
//  RandomanTests
//
//  Created by NickMeepo on 2021/2/26.
//

import XCTest
@testable import Randoman

class BasicTypesTests: XCTestCase {
    
    func testBool() throws {
        for bool in Random.bool().batch(count: batchCount) {
            XCTAssertTrue(bool || !bool)
            print("Bool: \(bool)")
        }
    }
        
    func testInt() throws {
        let head = "Int"
        for int in Random.int().batch(count: batchCount) {
            XCTAssertTrue(Int.min...Int.max ~= int)
            print("\(head): \(int)")
        }
        for int in Random.int(in: -10...10).batch(count: batchCount) {
            XCTAssertTrue(-10...10 ~= int)
            print("\(head) in -10...10: \(int)")
        }
        for int in Random.int(in: -10..<10).batch(count: batchCount) {
            XCTAssertTrue(-10..<10 ~= int)
            print("\(head) in -10..<10: \(int)")
        }
        for int in Random.int(in: 0...0).batch(count: batchCount) {
            XCTAssertTrue(int == 0)
            print("\(head) in 0...0: \(int)")
        }
    }
    
    func testInt8() throws {
        let head = "Int8"
        for int in Random.int8().batch(count: batchCount) {
            XCTAssertTrue(Int8.min...Int8.max ~= int)
            print("\(head): \(int)")
        }
        for int in Random.int8(in: -10...10).batch(count: batchCount) {
            XCTAssertTrue(-10...10 ~= int)
            print("\(head) in -10...10: \(int)")
        }
        for int in Random.int8(in: -10..<10).batch(count: batchCount) {
            XCTAssertTrue(-10..<10 ~= int)
            print("\(head) in -10..<10: \(int)")
        }
        for int in Random.int8(in: 0...0).batch(count: batchCount) {
            XCTAssertTrue(int == 0)
            print("\(head) in 0...0: \(int)")
        }
    }
    
    func testInt16() throws {
        let head = "Int16"
        for int in Random.int16().batch(count: batchCount) {
            XCTAssertTrue(Int16.min...Int16.max ~= int)
            print("\(head): \(int)")
        }
        for int in Random.int16(in: -10...10).batch(count: batchCount) {
            XCTAssertTrue(-10...10 ~= int)
            print("\(head) in -10...10: \(int)")
        }
        for int in Random.int16(in: -10..<10).batch(count: batchCount) {
            XCTAssertTrue(-10..<10 ~= int)
            print("\(head) in -10..<10: \(int)")
        }
        for int in Random.int16(in: 0...0).batch(count: batchCount) {
            XCTAssertTrue(int == 0)
            print("\(head) in 0...0: \(int)")
        }
    }
    
    func testInt32() throws {
        let head = "Int32"
        for int in Random.int32().batch(count: batchCount) {
            XCTAssertTrue(Int32.min...Int32.max ~= int)
            print("\(head): \(int)")
        }
        for int in Random.int32(in: -10...10).batch(count: batchCount) {
            XCTAssertTrue(-10...10 ~= int)
            print("\(head) in -10...10: \(int)")
        }
        for int in Random.int32(in: -10..<10).batch(count: batchCount) {
            XCTAssertTrue(-10..<10 ~= int)
            print("\(head) in -10..<10: \(int)")
        }
        for int in Random.int32(in: 0...0).batch(count: batchCount) {
            XCTAssertTrue(int == 0)
            print("\(head) in 0...0: \(int)")
        }
    }
    
    func testInt64() throws {
        let head = "Int64"
        for int in Random.int64().batch(count: batchCount) {
            XCTAssertTrue(Int64.min...Int64.max ~= int)
            print("\(head): \(int)")
        }
        for int in Random.int64(in: -0xffffff...0xffffff).batch(count: batchCount) {
            XCTAssertTrue(-0xffffff...0xffffff ~= int)
            print("\(head) in -0xffffff...0xffffff: \(int)")
        }
        for int in Random.int64(in: -0xffffff..<0xffffff).batch(count: batchCount) {
            XCTAssertTrue(-0xffffff..<0xffffff ~= int)
            print("\(head) in -0xffffff..<0xffffff: \(int)")
        }
        for int in Random.int64(in: 0...0).batch(count: batchCount) {
            XCTAssertTrue(int == 0)
            print("\(head) in 0...0: \(int)")
        }
    }
    
    func testUInt() throws {
        let head = "UInt"
        for int in Random.uint().batch(count: batchCount) {
            XCTAssertTrue(UInt.min...UInt.max ~= int)
            print("\(head): \(int)")
        }
        for int in Random.uint(in: 0...10).batch(count: batchCount) {
            XCTAssertTrue(0...10 ~= int)
            print("\(head) in 0...10: \(int)")
        }
        for int in Random.uint(in: 0..<10).batch(count: batchCount) {
            XCTAssertTrue(0..<10 ~= int)
            print("\(head) in 0..<10: \(int)")
        }
        for int in Random.uint(in: 0...0).batch(count: batchCount) {
            XCTAssertTrue(int == 0)
            print("\(head) in 0...0: \(int)")
        }
    }
    
    func testUInt8() throws {
        let head = "UInt8"
        for int in Random.uint8().batch(count: batchCount) {
            XCTAssertTrue(UInt8.min...UInt8.max ~= int)
            print("\(head): \(int)")
        }
        for int in Random.uint8(in: 0...10).batch(count: batchCount) {
            XCTAssertTrue(0...10 ~= int)
            print("\(head) in 0...10: \(int)")
        }
        for int in Random.uint8(in: 0..<10).batch(count: batchCount) {
            XCTAssertTrue(0..<10 ~= int)
            print("\(head) in 0..<10: \(int)")
        }
        for int in Random.uint8(in: 0...0).batch(count: batchCount) {
            XCTAssertTrue(int == 0)
            print("\(head) in 0...0: \(int)")
        }
    }
    
    func testUInt16() throws {
        let head = "UInt16"
        for int in Random.uint16().batch(count: batchCount) {
            XCTAssertTrue(UInt16.min...UInt16.max ~= int)
            print("\(head): \(int)")
        }
        for int in Random.uint16(in: 0...10).batch(count: batchCount) {
            XCTAssertTrue(0...10 ~= int)
            print("\(head) in 0...10: \(int)")
        }
        for int in Random.uint16(in: 0..<10).batch(count: batchCount) {
            XCTAssertTrue(0..<10 ~= int)
            print("\(head) in 0..<10: \(int)")
        }
        for int in Random.uint16(in: 0...0).batch(count: batchCount) {
            XCTAssertTrue(int == 0)
            print("\(head) in 0...0: \(int)")
        }
    }
    
    func testUInt32() throws {
        let head = "UInt32"
        for int in Random.uint32().batch(count: batchCount) {
            XCTAssertTrue(UInt32.min...UInt32.max ~= int)
            print("\(head): \(int)")
        }
        for int in Random.uint32(in: 0...10).batch(count: batchCount) {
            XCTAssertTrue(0...10 ~= int)
            print("\(head) in 0...10: \(int)")
        }
        for int in Random.uint32(in: 0..<10).batch(count: batchCount) {
            XCTAssertTrue(0..<10 ~= int)
            print("\(head) in 0..<10: \(int)")
        }
        for int in Random.uint32(in: 0...0).batch(count: batchCount) {
            XCTAssertTrue(int == 0)
            print("\(head) in 0...0: \(int)")
        }
    }
    
    func testUInt64() throws {
        let head = "UInt64"
        for int in Random.uint64().batch(count: batchCount) {
            XCTAssertTrue(UInt64.min...UInt64.max ~= int)
            print("\(head): \(int)")
        }
        for int in Random.uint64(in: 0...0xffffff).batch(count: batchCount) {
            XCTAssertTrue(0...0xffffff ~= int)
            print("\(head) in 0...0xffffff: \(int)")
        }
        for int in Random.uint64(in: 0..<0xffffff).batch(count: batchCount) {
            XCTAssertTrue(0..<0xffffff ~= int)
            print("\(head) in 0..<0xffffff: \(int)")
        }
        for int in Random.uint64(in: 0...0).batch(count: batchCount) {
            XCTAssertTrue(int == 0)
            print("\(head) in 0...0: \(int)")
        }
    }
    
    func testFloat() throws {
        let head = "Float"
        for value in Random.float().batch(count: batchCount) {
            XCTAssertTrue(0...1 ~= value)
            print("\(head) in 0....1: \(value)")
        }
        for value in Random.float(in: -10...10).batch(count: batchCount) {
            XCTAssertTrue(-10...10 ~= value)
            print("\(head) in -10...10: \(value)")
        }
        for value in Random.float(in: -10..<10).batch(count: batchCount) {
            XCTAssertTrue(-10..<10 ~= value)
            print("\(head) in -10..<10: \(value)")
        }
        for value in Random.float(in: 0...0).batch(count: batchCount) {
            XCTAssertTrue(value == 0)
            print("\(head) in 0...0: \(value)")
        }
    }
    
    func testFloat16() throws {
        let head = "Float16"
        for value in Random.float16().batch(count: batchCount) {
            XCTAssertTrue(0...1 ~= value)
            print("\(head) in 0....1: \(value)")
        }
        for value in Random.float16(in: -10...10).batch(count: batchCount) {
            XCTAssertTrue(-10...10 ~= value)
            print("\(head) in -10...10: \(value)")
        }
        for value in Random.float16(in: -10..<10).batch(count: batchCount) {
            XCTAssertTrue(-10..<10 ~= value)
            print("\(head) in -10..<10: \(value)")
        }
        for value in Random.float16(in: 0...0).batch(count: batchCount) {
            XCTAssertTrue(value == 0)
            print("\(head) in 0...0: \(value)")
        }
    }
    
    func testDouble() throws {
        let head = "Double"
        for value in Random.double().batch(count: batchCount) {
            XCTAssertTrue(0...1 ~= value)
            print("\(head) in 0....1: \(value)")
        }
        for value in Random.double(in: -10...10).batch(count: batchCount) {
            XCTAssertTrue(-10...10 ~= value)
            print("\(head) in -10...10: \(value)")
        }
        for value in Random.double(in: -10..<10).batch(count: batchCount) {
            XCTAssertTrue(-10..<10 ~= value)
            print("\(head) in -10..<10: \(value)")
        }
        for value in Random.double(in: 0...0).batch(count: batchCount) {
            XCTAssertTrue(value == 0)
            print("\(head) in 0...0: \(value)")
        }
    }
    
    func testCGFloat() throws {
        let head = "CGFloat"
        for value in Random.cgfloat().batch(count: batchCount) {
            XCTAssertTrue(0...1 ~= value)
            print("\(head) in 0....1: \(value)")
        }
        for value in Random.cgfloat(in: -10...10).batch(count: batchCount) {
            XCTAssertTrue(-10...10 ~= value)
            print("\(head) in -10...10: \(value)")
        }
        for value in Random.cgfloat(in: -10..<10).batch(count: batchCount) {
            XCTAssertTrue(-10..<10 ~= value)
            print("\(head) in -10..<10: \(value)")
        }
        for value in Random.cgfloat(in: 0...0).batch(count: batchCount) {
            XCTAssertTrue(value == 0)
            print("\(head) in 0...0: \(value)")
        }
    }
    
}
 
