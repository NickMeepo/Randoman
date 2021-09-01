//
//  Tuples.swift
//  Randoman
//
//  Created by NickMeepo on 2021/2/23.
//

import Foundation

public final class RandomTuple2<T1,
                                T2>: Randomizable {

    public typealias RandomValue = (T1, T2)

    public func single() -> (T1, T2) {
        (c1.randomElement()!,
         c2.randomElement()!)
    }

    public func single<G>(using generator: inout G) -> (T1, T2) where G: RandomNumberGenerator {
        (c1.randomElement(using: &generator)!,
         c2.randomElement(using: &generator)!)
    }

    internal let c1: AnyCollection<T1>

    internal let c2: AnyCollection<T2>

    internal init(
        _ collection1: AnyCollection<T1>,
        _ collection2: AnyCollection<T2>) {
        guard !collection1.isEmpty else {
            fatalError(Random.Error.emptySource)
        }
        guard !collection2.isEmpty else {
            fatalError(Random.Error.emptySource)
        }
        self.c1 = collection1
        self.c2 = collection2
    }

}

public final class RandomTuple3<T1,
                                T2,
                                T3>: Randomizable {

    public typealias RandomValue = (T1, T2, T3)

    public func single() -> (T1, T2, T3) {
        (c1.randomElement()!,
         c2.randomElement()!,
         c3.randomElement()!)
    }

    public func single<G>(using generator: inout G) -> (T1, T2, T3) where G: RandomNumberGenerator {
        (c1.randomElement(using: &generator)!,
         c2.randomElement(using: &generator)!,
         c3.randomElement(using: &generator)!)
    }

    internal let c1: AnyCollection<T1>

    internal let c2: AnyCollection<T2>

    internal let c3: AnyCollection<T3>

    internal init(
        _ collection1: AnyCollection<T1>,
        _ collection2: AnyCollection<T2>,
        _ collection3: AnyCollection<T3>) {
        guard !collection1.isEmpty else {
            fatalError(Random.Error.emptySource)
        }
        guard !collection2.isEmpty else {
            fatalError(Random.Error.emptySource)
        }
        guard !collection3.isEmpty else {
            fatalError(Random.Error.emptySource)
        }
        self.c1 = collection1
        self.c2 = collection2
        self.c3 = collection3
    }

}

public final class RandomTuple4<T1,
                                T2,
                                T3,
                                T4>: Randomizable {

    public typealias RandomValue = (T1, T2, T3, T4)

    public func single() -> (T1, T2, T3, T4) {
        (c1.randomElement()!,
         c2.randomElement()!,
         c3.randomElement()!,
         c4.randomElement()!)
    }

    public func single<G>(using generator: inout G) -> (T1, T2, T3, T4) where G: RandomNumberGenerator {
        (c1.randomElement(using: &generator)!,
         c2.randomElement(using: &generator)!,
         c3.randomElement(using: &generator)!,
         c4.randomElement(using: &generator)!)
    }

    internal let c1: AnyCollection<T1>

    internal let c2: AnyCollection<T2>

    internal let c3: AnyCollection<T3>

    internal let c4: AnyCollection<T4>

    internal init(
        _ collection1: AnyCollection<T1>,
        _ collection2: AnyCollection<T2>,
        _ collection3: AnyCollection<T3>,
        _ collection4: AnyCollection<T4>) {
        guard !collection1.isEmpty else {
            fatalError(Random.Error.emptySource)
        }
        guard !collection2.isEmpty else {
            fatalError(Random.Error.emptySource)
        }
        guard !collection3.isEmpty else {
            fatalError(Random.Error.emptySource)
        }
        guard !collection4.isEmpty else {
            fatalError(Random.Error.emptySource)
        }
        self.c1 = collection1
        self.c2 = collection2
        self.c3 = collection3
        self.c4 = collection4
    }

}

public final class RandomTuple5<T1,
                                T2,
                                T3,
                                T4,
                                T5>: Randomizable {

    public typealias RandomValue = (T1, T2, T3, T4, T5)

    public func single() -> (T1, T2, T3, T4, T5) {
        (c1.randomElement()!,
         c2.randomElement()!,
         c3.randomElement()!,
         c4.randomElement()!,
         c5.randomElement()!)
    }

    public func single<G>(using generator: inout G) -> (T1, T2, T3, T4, T5) where G: RandomNumberGenerator {
        (c1.randomElement(using: &generator)!,
         c2.randomElement(using: &generator)!,
         c3.randomElement(using: &generator)!,
         c4.randomElement(using: &generator)!,
         c5.randomElement(using: &generator)!)
    }

    internal let c1: AnyCollection<T1>

    internal let c2: AnyCollection<T2>

    internal let c3: AnyCollection<T3>

    internal let c4: AnyCollection<T4>

    internal let c5: AnyCollection<T5>

    internal init(
        _ collection1: AnyCollection<T1>,
        _ collection2: AnyCollection<T2>,
        _ collection3: AnyCollection<T3>,
        _ collection4: AnyCollection<T4>,
        _ collection5: AnyCollection<T5>) {
        guard !collection1.isEmpty else {
            fatalError(Random.Error.emptySource)
        }
        guard !collection2.isEmpty else {
            fatalError(Random.Error.emptySource)
        }
        guard !collection3.isEmpty else {
            fatalError(Random.Error.emptySource)
        }
        guard !collection4.isEmpty else {
            fatalError(Random.Error.emptySource)
        }
        guard !collection5.isEmpty else {
            fatalError(Random.Error.emptySource)
        }
        self.c1 = collection1
        self.c2 = collection2
        self.c3 = collection3
        self.c4 = collection4
        self.c5 = collection5
    }

}

public final class RandomTuple6<T1,
                                T2,
                                T3,
                                T4,
                                T5,
                                T6>: Randomizable {

    public typealias RandomValue = (T1, T2, T3, T4, T5, T6)

    public func single() -> (T1, T2, T3, T4, T5, T6) {
        (c1.randomElement()!,
         c2.randomElement()!,
         c3.randomElement()!,
         c4.randomElement()!,
         c5.randomElement()!,
         c6.randomElement()!)
    }

    public func single<G>(using generator: inout G) -> (T1, T2, T3, T4, T5, T6) where G: RandomNumberGenerator {
        (c1.randomElement(using: &generator)!,
         c2.randomElement(using: &generator)!,
         c3.randomElement(using: &generator)!,
         c4.randomElement(using: &generator)!,
         c5.randomElement(using: &generator)!,
         c6.randomElement(using: &generator)!)
    }

    internal let c1: AnyCollection<T1>

    internal let c2: AnyCollection<T2>

    internal let c3: AnyCollection<T3>

    internal let c4: AnyCollection<T4>

    internal let c5: AnyCollection<T5>

    internal let c6: AnyCollection<T6>

    internal init(
        _ collection1: AnyCollection<T1>,
        _ collection2: AnyCollection<T2>,
        _ collection3: AnyCollection<T3>,
        _ collection4: AnyCollection<T4>,
        _ collection5: AnyCollection<T5>,
        _ collection6: AnyCollection<T6>) {
        guard !collection1.isEmpty else {
            fatalError(Random.Error.emptySource)
        }
        guard !collection2.isEmpty else {
            fatalError(Random.Error.emptySource)
        }
        guard !collection3.isEmpty else {
            fatalError(Random.Error.emptySource)
        }
        guard !collection4.isEmpty else {
            fatalError(Random.Error.emptySource)
        }
        guard !collection5.isEmpty else {
            fatalError(Random.Error.emptySource)
        }
        guard !collection6.isEmpty else {
            fatalError(Random.Error.emptySource)
        }
        self.c1 = collection1
        self.c2 = collection2
        self.c3 = collection3
        self.c4 = collection4
        self.c5 = collection5
        self.c6 = collection6
    }

}

public final class RandomTuple7<T1,
                                T2,
                                T3,
                                T4,
                                T5,
                                T6,
                                T7>: Randomizable {

    public typealias RandomValue = (T1, T2, T3, T4, T5, T6, T7)

    public func single() -> (T1, T2, T3, T4, T5, T6, T7) {
        (c1.randomElement()!,
         c2.randomElement()!,
         c3.randomElement()!,
         c4.randomElement()!,
         c5.randomElement()!,
         c6.randomElement()!,
         c7.randomElement()!)
    }

    public func single<G>(using generator: inout G) -> (T1, T2, T3, T4, T5, T6, T7) where G: RandomNumberGenerator {
        (c1.randomElement(using: &generator)!,
         c2.randomElement(using: &generator)!,
         c3.randomElement(using: &generator)!,
         c4.randomElement(using: &generator)!,
         c5.randomElement(using: &generator)!,
         c6.randomElement(using: &generator)!,
         c7.randomElement(using: &generator)!)
    }

    internal let c1: AnyCollection<T1>

    internal let c2: AnyCollection<T2>

    internal let c3: AnyCollection<T3>

    internal let c4: AnyCollection<T4>

    internal let c5: AnyCollection<T5>

    internal let c6: AnyCollection<T6>

    internal let c7: AnyCollection<T7>

    internal init(
        _ collection1: AnyCollection<T1>,
        _ collection2: AnyCollection<T2>,
        _ collection3: AnyCollection<T3>,
        _ collection4: AnyCollection<T4>,
        _ collection5: AnyCollection<T5>,
        _ collection6: AnyCollection<T6>,
        _ collection7: AnyCollection<T7>) {
        guard !collection1.isEmpty else {
            fatalError(Random.Error.emptySource)
        }
        guard !collection2.isEmpty else {
            fatalError(Random.Error.emptySource)
        }
        guard !collection3.isEmpty else {
            fatalError(Random.Error.emptySource)
        }
        guard !collection4.isEmpty else {
            fatalError(Random.Error.emptySource)
        }
        guard !collection5.isEmpty else {
            fatalError(Random.Error.emptySource)
        }
        guard !collection6.isEmpty else {
            fatalError(Random.Error.emptySource)
        }
        guard !collection7.isEmpty else {
            fatalError(Random.Error.emptySource)
        }
        self.c1 = collection1
        self.c2 = collection2
        self.c3 = collection3
        self.c4 = collection4
        self.c5 = collection5
        self.c6 = collection6
        self.c7 = collection7
    }

}

public final class RandomTuple8<T1,
                                T2,
                                T3,
                                T4,
                                T5,
                                T6,
                                T7,
                                T8>: Randomizable {

    public typealias RandomValue = (T1, T2, T3, T4, T5, T6, T7, T8)

    public func single() -> (T1, T2, T3, T4, T5, T6, T7, T8) {
        (c1.randomElement()!,
         c2.randomElement()!,
         c3.randomElement()!,
         c4.randomElement()!,
         c5.randomElement()!,
         c6.randomElement()!,
         c7.randomElement()!,
         c8.randomElement()!)
    }

    public func single<G>(using generator: inout G) -> (T1, T2, T3, T4, T5, T6, T7, T8) where G: RandomNumberGenerator {
        (c1.randomElement(using: &generator)!,
         c2.randomElement(using: &generator)!,
         c3.randomElement(using: &generator)!,
         c4.randomElement(using: &generator)!,
         c5.randomElement(using: &generator)!,
         c6.randomElement(using: &generator)!,
         c7.randomElement(using: &generator)!,
         c8.randomElement(using: &generator)!)
    }

    internal let c1: AnyCollection<T1>

    internal let c2: AnyCollection<T2>

    internal let c3: AnyCollection<T3>

    internal let c4: AnyCollection<T4>

    internal let c5: AnyCollection<T5>

    internal let c6: AnyCollection<T6>

    internal let c7: AnyCollection<T7>

    internal let c8: AnyCollection<T8>

    internal init(
        _ collection1: AnyCollection<T1>,
        _ collection2: AnyCollection<T2>,
        _ collection3: AnyCollection<T3>,
        _ collection4: AnyCollection<T4>,
        _ collection5: AnyCollection<T5>,
        _ collection6: AnyCollection<T6>,
        _ collection7: AnyCollection<T7>,
        _ collection8: AnyCollection<T8>) {
        guard !collection1.isEmpty else {
            fatalError(Random.Error.emptySource)
        }
        guard !collection2.isEmpty else {
            fatalError(Random.Error.emptySource)
        }
        guard !collection3.isEmpty else {
            fatalError(Random.Error.emptySource)
        }
        guard !collection4.isEmpty else {
            fatalError(Random.Error.emptySource)
        }
        guard !collection5.isEmpty else {
            fatalError(Random.Error.emptySource)
        }
        guard !collection6.isEmpty else {
            fatalError(Random.Error.emptySource)
        }
        guard !collection7.isEmpty else {
            fatalError(Random.Error.emptySource)
        }
        guard !collection8.isEmpty else {
            fatalError(Random.Error.emptySource)
        }
        self.c1 = collection1
        self.c2 = collection2
        self.c3 = collection3
        self.c4 = collection4
        self.c5 = collection5
        self.c6 = collection6
        self.c7 = collection7
        self.c8 = collection8
    }

}
