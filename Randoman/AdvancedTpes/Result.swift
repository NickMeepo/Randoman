//
//  Result.swift
//  Randoman
//
//  Created by NickMeepo on 2021/2/24.
//

import Foundation

public final class RandomResult<T, E>: Randomizable where E: Error {

    public typealias RandomValue = Result<T, E>

    public func single() -> Result<T, E> {
        if Bool.random() {
            if let value = succusses.randomElement() {
                return .success(value)
            } else if let error = failures.randomElement() {
                return .failure(error)
            }
        } else {
             if let error = failures.randomElement() {
                return .failure(error)
            } else if let value = succusses.randomElement() {
                return .success(value)
            }
        }
        fatalError(Random.Error.emptySource)
    }

    public func single<G>(using generator: inout G) -> Result<T, E> where G: RandomNumberGenerator {
        if Bool.random(using: &generator) {
            if let value = succusses.randomElement(using: &generator) {
                return .success(value)
            } else if let error = failures.randomElement(using: &generator) {
                return .failure(error)
            }
        } else {
             if let error = failures.randomElement(using: &generator) {
                return .failure(error)
            } else if let value = succusses.randomElement(using: &generator) {
                return .success(value)
            }
        }
        fatalError(Random.Error.emptySource)
    }

    internal let succusses: AnyCollection<T>

    internal let failures: AnyCollection<E>

    internal init(succusses: AnyCollection<T>, failures: AnyCollection<E>) {
        guard !succusses.isEmpty || !failures.isEmpty else {
            fatalError(Random.Error.emptySource)
        }
        self.succusses = succusses
        self.failures = failures
    }
}
