//
//  ContainerTests.swift
//  RandomanTests
//
//  Created by NickMeepo on 2021/2/23.
//

import XCTest
@testable import Randoman

class ContainerTests: XCTestCase {
    
    func testElement() throws {
        
        for ele in Random.element(in: range).batch(count: batchCount) {
            XCTAssertNotNil(ele)
            XCTAssertTrue(range.contains(ele))
            print("FloatingPoint Range Element: \(ele)")
        }
        
        for ele in Random.element(in: closedRange).batch(count: batchCount) {
            XCTAssertNotNil(ele)
            XCTAssertTrue(closedRange.contains(ele))
            print("FloatingPoint ClosedRange Element: \(ele)")
        }
        
        for ele in Random.element(in: countableRange).batch(count: batchCount) {
            XCTAssertNotNil(ele)
            XCTAssertTrue(countableRange.contains(ele))
            print("CountableRange Element: \(ele)")
        }
        
        for ele in Random.element(in: countableClosedRange).batch(count: batchCount) {
            XCTAssertNotNil(ele)
            XCTAssertTrue(countableClosedRange.contains(ele))
            print("CountableClosedRange Element: \(ele)")
        }
        
        for ele in Random.element(in: array).batch(count: batchCount) {
            XCTAssertNotNil(ele)
            XCTAssertTrue(array.contains(ele!))
            print("Array Element: \(ele!)")
        }
        
        for ele in Random.element(in: subArray).batch(count: batchCount) {
            XCTAssertNotNil(ele)
            XCTAssertTrue(subArray.contains(ele!))
            print("ArraySlice Element: \(ele!)")
        }
        
        for ele in Random.element(in: set).batch(count: batchCount) {
            XCTAssertNotNil(ele)
            XCTAssertTrue(set.contains(ele!))
            print("Set Element: \(ele!)")
        }
        
        for ele in Random.element(in: dict).batch(count: batchCount) {
            XCTAssertNotNil(ele)
            XCTAssertTrue(dictKeys.contains(ele!.key))
            XCTAssertTrue(dict[ele!.key] == ele!.value)
            print("Dict Element: \(ele!)")
        }
        
        for ele in Random.element(in: string).batch(count: batchCount) {
            XCTAssertNotNil(ele)
            XCTAssertTrue(string.contains(ele!))
            print("String Element: \(ele!)")
        }
        
        for ele in Random.element(in: subString).batch(count: batchCount) {
            XCTAssertNotNil(ele)
            XCTAssertTrue(subString.contains(ele!))
            print("SubString Element: \(ele!)")
        }

    }
    
    func testIndex() throws {
        for idx in Random.index(in: countableRange).batch(count: batchCount) {
            XCTAssertTrue(!countableRange.isEmpty && idx != nil)
            print("Element from CountableRange Index \(idx!): Value \(countableRange[idx!])")
        }
        
        for idx in Random.index(in: countableClosedRange).batch(count: batchCount) {
            XCTAssertTrue(!countableClosedRange.isEmpty && idx != nil)
            print("Element from CountableClosedRange Index \(idx!): Value \(countableClosedRange[idx!])")
        }
        
        for idx in Random.index(in: array).batch(count: batchCount) {
            XCTAssertTrue(!array.isEmpty && idx != nil)
            print("Element from Array Index \(idx!): Value \(array[idx!])")
        }
        
        for idx in Random.index(in: subArray).batch(count: batchCount) {
            XCTAssertTrue(!subArray.isEmpty && idx != nil)
            print("Element from SubArray Index \(idx!): Value \(subArray[idx!])")
        }
        
        for idx in Random.index(in: string).batch(count: batchCount) {
            XCTAssertTrue(!string.isEmpty && idx != nil)
            print("Element from String Index \(idx!): Value \(string[idx!])")
        }
        
        for idx in Random.index(in: subString).batch(count: batchCount) {
            XCTAssertTrue(!subString.isEmpty && idx != nil)
            print("Element from SubString Index \(idx!): Value \(subString[idx!])")
        }
        
        for idx in Random.index(in: dict).batch(count: batchCount) {
            XCTAssertTrue(!dict.isEmpty && idx != nil)
            print("Element from Dictionary Index \(idx!): Value \(dict[idx!])")
        }
        
        for idx in Random.index(in: set).batch(count: batchCount) {
            XCTAssertTrue(!set.isEmpty && idx != nil)
            print("Element from Set Index \(idx!): Value \(set[idx!])")
        }
                
        for idx in Random.index(in: collection).batch(count: batchCount) {
            XCTAssertTrue(!collection.isEmpty && idx != nil)
            print("Element from AnyCollection Index \(idx!): Value \(collection[idx!])")
        }
    }
    
    func testRange() throws {
        for range in Random.range(in: countableRange).batch(count: batchCount) {
            XCTAssertTrue(range != nil && !countableRange[range!].isEmpty)
            print("Elements from CountableRange Range: \(countableRange[range!])")
        }
        
        for range in Random.range(in: countableClosedRange).batch(count: batchCount) {
            XCTAssertTrue(range != nil && !countableClosedRange[range!].isEmpty)
            print("Elements from CountableClosedRange Range: \(countableClosedRange[range!])")
        }
        
        for range in Random.range(in: array).batch(count: batchCount) {
            XCTAssertTrue(range != nil && !array[range!].isEmpty)
            print("Elements from Array Range \(range!): \(array[range!])")
        }
        
        for range in Random.range(in: subArray).batch(count: batchCount) {
            XCTAssertTrue(!subArray.isEmpty && range != nil)
            print("Elements from SubArray Range \(range!): \(subArray[range!])")
        }
        
        for range in Random.range(in: string).batch(count: batchCount) {
            XCTAssertTrue(range != nil && !string[range!].isEmpty)
            print("Elements from String Range: \(string[range!])")
        }
        
        for range in Random.range(in: subString).batch(count: batchCount) {
            XCTAssertTrue(range != nil && !subString[range!].isEmpty)
            print("Elements from SubString Range: \(subString[range!])")
        }
        
        for range in Random.range(in: emptyString).batch(count: batchCount) {
            XCTAssertTrue(range == nil)
        }
        
        for range in Random.range(in: dict).batch(count: batchCount) {
            XCTAssertTrue(range != nil && !dict[range!].isEmpty)
            print("Elements from Dictionary Range: \(dict[range!].map { $0 })")
        }

        for range in Random.range(in: set).batch(count: batchCount) {
            XCTAssertTrue(range != nil && !set[range!].isEmpty)
            print("Elements from Set Range: \(set[range!].map { $0 })")
        }
        
        for range in Random.range(in: countableClosedRange).batch(count: batchCount) {
            XCTAssertTrue(range != nil && !countableClosedRange[range!].isEmpty)
            print("Elements from CountableClosedRange Range: \(countableClosedRange[range!].map { $0 })")
        }
        
        for range in Random.range(in: collection).batch(count: batchCount) {
            XCTAssertTrue(range != nil && !collection[range!].isEmpty )
            print("Elements from AnyCollection Range: \(collection[range!].map { $0 })")
        }
    }

    func testSlice() throws {
        for slice in Random.slice(in: countableRange).batch(count: batchCount) {
            for each in slice {
                XCTAssertTrue(countableRange.contains(each))
            }
            print("Slice from CountableRange: \(slice)")
        }
        
        for slice in Random.slice(in: countableClosedRange).batch(count: batchCount) {
            for each in slice {
                XCTAssertTrue(countableClosedRange.contains(each))
            }
            print("Slice from CountableClosedRange: \(slice)")
        }


        for slice in Random.slice(in: array).batch(count: batchCount) {
            for each in slice {
                XCTAssertTrue(array.contains(each))
            }
            print("Slice from Array: \(slice)")
        }
        
        for slice in Random.slice(in: subArray).batch(count: batchCount) {
            for each in slice {
                XCTAssertTrue(subArray.contains(each))
            }
            print("Slice from SubArray: \(slice)")
        }
        
        for slice in Random.slice(in: string).batch(count: batchCount) {
            XCTAssertTrue(string.contains(slice))
            print("Slice from String: \(slice)")
        }
        
        for slice in Random.slice(in: subString).batch(count: batchCount) {
            XCTAssertTrue(subString.contains(slice))
            print("Slice from SubString: \(slice)")
        }
        
        for slice in Random.slice(in: emptyString).batch(count: batchCount) {
            XCTAssertTrue(slice.isEmpty)
        }
        
        for slice in Random.slice(in: dict).batch(count: batchCount) {
            for (key, value) in slice {
                XCTAssertTrue(dict[key] == value)
            }
            print("Slice from Dictionary: \(slice.map { $0 })")
        }
        
        for slice in Random.slice(in: set).batch(count: batchCount) {
            for value in slice {
                XCTAssertTrue(set.contains(value))
            }
            print("Slice from Set: \(Set(slice))")
        }
            
        for slice in Random.slice(in: collection).batch(count: batchCount) {
            for each in slice {
                XCTAssertTrue(collection.contains(each))
            }
            print("Slice from AnyCollection: \(slice.map { $0 })")
        }
        
    }
    
    func testShuffle() throws {
        for shuffle in Random.shuffle(array).batch(count: batchCount) {
            XCTAssertEqual(shuffle.sorted(), array)
            print("Shuffle array: \(shuffle)")
        }
        
        for shuffle in Random.shuffle(string).batch(count: batchCount) {
            XCTAssertEqual(String(shuffle.sorted()), string)
            print("Shuffle string: \(shuffle)")
        }
        
    }
    
}
