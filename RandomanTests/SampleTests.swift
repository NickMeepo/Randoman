//
//  SampleTests.swift
//  RandomanTests
//
//  Created by NickMeepo on 2021/3/2.
//

import XCTest
@testable import Randoman

class SampleTests: XCTestCase {
    
    func testWeightsSampling() throws {
        let total = 100000
        let elements = [3, 4, 5, 6]
        let weightsss: [[Double]] = [
            [0.1, 0.2, 0.3, 0.4],
            [0.3, 0.4, 0.2, 0.1],
            [0.25, 0.25, 0.25, 0.25],
            [0.25, 0.25, 0.25, 0.25, 0.25, 0.25]
        ]
        for weights in weightsss {
            let samplingTest = Random.sample.value(from: elements, props: weights)
            let batches = samplingTest.batch(count: total)
            var counts = [0, 0, 0, 0]
            for element in batches {
                switch element {
                case elements[0]:
                    counts[0] += 1
                case elements[1]:
                    counts[1] += 1
                case elements[2]:
                    counts[2] += 1
                case elements[3]:
                    counts[3] += 1
                default:
                    XCTAssertTrue(false)
                }
            }
            let sampledProps: [Double] = counts.map {
                Double($0) / Double(total)
            }
            print("Sampled props with weights: \(sampledProps)")
            
            XCTAssertTrue(testErrorBeyondEps(with: sampledProps, and: weights, eps: 0.005))
        }
                
        // Empty weight test, empty weight will generate nil per single().
        let emptyWeights = Random.sample.value(from: [1, 2, 3, 4], props: [])
        XCTAssertTrue(testErrorBeyondEps(with: emptyWeights.weights, and: [0.25, 0.25, 0.25, 0.25], eps: 0))

        // Zero weight test, weights [0, 0] will become weights [0.5, 0.5].
        let zeroWeights = Random.sample.value(from: [true, false], props: [0, 0]).weights
        XCTAssertTrue(testErrorBeyondEps(with: zeroWeights, and: [0.5, 0.5], eps: 0))

        // Normalized weight test, weights [1, 3] will become weights [1 / 4.0, 3 / 4.0]
        let normalizedWeights = Random.sample.value(from: [true, false], props: [1, 3]).weights
        XCTAssertTrue(testErrorBeyondEps(with: normalizedWeights, and: [0.25, 0.75], eps: 0))
        
        // Negative weight test, weights [-2, -1, 1, 1] will become weights [0, 0, 1, 1] then [0, 0, 0.5, 0.5]
        let negativeWeights = Random.sample.value(from: [0, 1, 2, 3], props: [-2, -1, 1, 1]).weights
        XCTAssertTrue(testErrorBeyondEps(with: negativeWeights, and: [0, 0, 0.5, 0.5], eps: 0))
        
        // Short weights test, weights [1, 2] will become weights [1, 2, 0] then [1 / 3, 2 / 3, 0]
        let shortWeights = Random.sample.value(from: [0, 1, 2], props: [1, 2]).weights
        XCTAssertTrue(testErrorBeyondEps(with: shortWeights, and: [ 1 / 3.0, 2 / 3.0, 0], eps: 0))
    }
    
    func testGeometricSampling() throws {
        let successes: [Double] = [
            -1, // will be transformed to 0
            2, // will be transformed to 1
            0,
            1,
            0.5,
            0.25,
            0.0001,
        ]
        for success in successes {
            let test = Random.sample.geometric(successProp: success)
            for round in test.batch(count: 10) {
                print("first success with prop \(success) in round: \(round)")
            }
            print("first success with success prop \(success) statistics: average \(test.average), var: \(test.variance)")
        }
    }
    
    func testPoisson() throws {
//        for each in Random.samplingPoisson(lamda: 4 * 0.2).single() {
//            print("Poisson result with lamda (\(Random.samplingPoisson(lamda: 4 * 0.2).lamda): \(each)")
//        }
        print(Random.sample.poisson(lamda: 4 * 0.2).single())
    }
    
    func testBernoulliSampling() throws {
        let successes: [Double] = [
            -1, // will be transformed to 0
            2, // will be transformed to 1
            0,
            1,
            0.5,
            0.25,
            0.0001,
        ]
        for success in successes {
            let test = Random.sample.bernoulli(successProp: success)
            for result in test.batch(count: 10) {
                print("Bernoulli trail result with success prop \(success): \(result)")
            }
            print("Bernoulli trail with success prop \(success) statistics: average \(test.average), var \(test.variance)")
        }
        
    }
    
}

extension SampleTests {
    func testErrorBeyondEps(with array: [Double], and array2: [Double], eps: Double) -> Bool {
        let (array, array2) = (array.count <= array2.count) ? (array, array2) : (array2, array)
        var breaked = false
        for (idx, each) in array.enumerated() {
            if !abs(each - array2[idx]).isLessThanOrEqualTo(eps) {
                breaked = true
                break
            }
        }
        return !breaked
    }
}
