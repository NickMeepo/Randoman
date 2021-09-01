//
//  TestData.swift
//  RandomanTests
//
//  Created by NickMeepo on 2021/2/26.
//

import Foundation

/// Error with: ping/pong/par
///
/// - ping
/// - pong
/// - par
enum OneError: Error, CaseIterable {
    case ping
    case pong
    case par
}

/// Emty Error
enum EmptyError: Error, CaseIterable {
    
}

/// Gender
///
/// - male
/// - female
enum Gender: String, CaseIterable {
    case male
    case female
}

/// "[1][0-9]{10}"
let pattern = "[1][0-9]{10}"

/// 10...20
let countableClosedRange = 10...20

/// 10..<20
let countableRange = 10..<20

/// 0.0...10.0
let closedRange = 0.0...10.0

/// 0.0..<10.0
let range = 0.0..<10.0

/// [20...30]
let array = (20...30).map { $0 }

/// [20...25]
let subArray = array[0...5]

/// ""
let emptyString = ""

/// abcdefghijklmnopqrstuvwxyz
let string = "abcdefghijklmnopqrstuvwxyz"

/// abcde
let subString = string[string.startIndex..<(string.index(string.startIndex, offsetBy: 5))]

/// ["a": 0, "b":1, ..., "z":25]
///
/// ["y": 24, "o": 14, "r": 17, "e": 4, "t": 19, "a": 0, "s": 18, "v": 21, "q": 16, "f": 5, "i": 8, "b": 1, "k": 10, "n": 13, "l": 11, "w": 22, "m": 12, "x": 23, "g": 6, "d": 3, "p": 15, "j": 9, "c": 2, "z": 25, "h": 7, "u": 20]
let dict: [String: Int] = {
    var this = [String: Int]()
    for (idx, char) in string.enumerated() {
        let key = String(char)
        this[key] = idx
    }
    return this
}()

/// ["a", ..., "z"]
let dictKeys = dict.keys

/// abcdefghijklmnopqrstuvwxyz
///
/// ["b", "u", "v", "n", "w", "o", "q", "a", "y", "x", "r", "t", "h", "f", "g", "c", "i", "l", "z", "j", "k", "p", "m", "e", "d", "s"]
let set: Set<String> = {
    var this = Set<String>()
    for char in string {
        let ele = String(char)
        this.insert(ele)
    }
    return this
}()

/// [20...30]
let collection = AnyCollection(array)

/// [100, 100, 100, 100, 100, 100, 100, 100, 100, 100]
let repeated: Repeated<Int> = {
   return repeatElement(100, count: 10)
}()

let batchCount = 1
