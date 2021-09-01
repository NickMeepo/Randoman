//
//  WeightsSampling.swift
//  Randoman
//
//  Created by NickMeepo on 2021/3/2.
//

import Foundation

public final class RandomWeightsSampling<Element>: Randomizable {

    public typealias RandomValue = Element

    public func single() -> Element {
        self.generateSingle(from: .random(in: 0...1))
    }

    public func single<G>(using generator: inout G) -> Element where G: RandomNumberGenerator {
        self.generateSingle(from: .random(in: 0...1, using: &generator))
    }

    public var accumulatedWeights: [Double] {
        self.source.map { $0.accumulatedWeight }
    }

    public var weights: [Double] {
        self.source.map { $0.weight }
    }

    public var elements: [Element] {
        self.source.map { $0.element }
    }

    private func generateSingle(from prop: Double) -> Element {
        self.source.first(where: {
            prop <= $0.accumulatedWeight
        })!.element
    }
    
    internal class SamplingElement {

        let element: Element

        var weight: Double

        var accumulatedWeight: Double

        init(element: Element, weight: Double) {
            self.element = element
            self.weight = weight
            self.accumulatedWeight = 0
        }

    }

    internal let source: [SamplingElement]

    internal init(collection: AnyCollection<Element>, weights: [Double]) {
        guard !collection.isEmpty else {
            fatalError(Random.Error.emptySource)
        }

        var source = [SamplingElement]()
        source.reserveCapacity(collection.count)
        var sumWeight: Double = .zero
        for (idx, element) in collection.enumerated() {
            let weight: Double = idx < weights.count ? weights[idx] : 0
            // reject negative weights
            let nonNegativeWeight: Double = weight.isLess(than: .zero) ? .zero : weight
            sumWeight += nonNegativeWeight
            source.append(SamplingElement(element: element, weight: nonNegativeWeight))
        }

        if sumWeight.isZero {
            // all zero processed as all 1.
            let weight: Double = 1.0 / Double(source.count)
            var accumulating: Double = 1
            source.forEach {
                $0.weight = weight
                $0.accumulatedWeight = weight * accumulating
                accumulating += 1.0
            }
            self.source = source
        } else {
            var accumulating: Double = 0
            self.source = source.map {
                $0.weight /= sumWeight
                $0.accumulatedWeight = accumulating + $0.weight
                accumulating = $0.accumulatedWeight
                return $0
            }
        }
    }

}
