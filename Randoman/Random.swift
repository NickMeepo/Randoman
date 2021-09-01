//
//  Random.swift
//  Randoman
//
//  Created by NickMeepo on 2021/2/23.
//

import Foundation
#if canImport(CoreGraphics)
import CoreGraphics
#endif

/// Random from Randoman framework.
public enum Random { }

public extension Random {

    /// Constant may be used.
    enum Constant {

        /// 2.718281828459045
        public static let e: Double = 2.718281828459045

        /// 3.141592653589793
        public static let pi: Double = .pi

    }

    /// Random error.
    enum Error {

        static let emptySource = "#Randoman: Error to generate random value from empty source."
        
        static let rangeBound = "#Randoman: Error of range`s lower bound and upper bound."
        
        static let enumerationNoneCase = "#Randoman: No case exists in enumeration."
        
    }

}

// MARK: Basic Types
public extension Random {

    /// Random bool: true, false.
    static func bool() -> RandomBool {
        .init()
    }

    /// Random Int in Int.min...Int.max.
    static func int() -> RandomInteger<Int> {
        .init(range: Int.min...Int.max)
    }

    /// Random Int in given range.
    ///
    /// - Parameter range: range of Range<Int>.
    static func int(in range: Range<Int>) -> RandomInteger<Int> {
        .init(range: range)
    }

    /// Random Int in given range.
    ///
    /// - Parameter range: range of ClosedRange<Int>.
    static func int(in range: ClosedRange<Int>) -> RandomInteger<Int> {
        .init(range: range)
    }

    /// Random Int8 in Int8.min...Int8.max.
    static func int8() -> RandomInteger<Int8> {
        .init(range: Int8.min...Int8.max)
    }

    /// Random Int8 in given range.
    ///
    /// - Parameter range: range of Range<Int8>.
    static func int8(in range: Range<Int8>) -> RandomInteger<Int8> {
        .init(range: range)
    }

    /// Random Int8 in given range.
    ///
    /// - Parameter range: range of ClosedRange<Int8>.
    static func int8(in range: ClosedRange<Int8>) -> RandomInteger<Int8> {
        .init(range: range)
    }

    /// Random Int16 in Int16.min...Int16.max.
    static func int16() -> RandomInteger<Int16> {
        .init(range: Int16.min...Int16.max)
    }

    /// Random Int16 in given range.
    ///
    /// - Parameter range: range of Range<Int16>.
    static func int16(in range: Range<Int16>) -> RandomInteger<Int16> {
        .init(range: range)
    }

    /// Random Int16 in given range.
    ///
    /// - Parameter range: range of ClosedRange<Int16>.
    static func int16(in range: ClosedRange<Int16>) -> RandomInteger<Int16> {
        .init(range: range)
    }

    /// Random Int32 in Int32.min...Int32.max.
    static func int32() -> RandomInteger<Int32> {
        .init(range: Int32.min...Int32.max)
    }

    /// Random Int32 in given range.
    ///
    /// - Parameter range: range of Range<Int32>.
    static func int32(in range: Range<Int32>) -> RandomInteger<Int32> {
        .init(range: range)
    }

    /// Random Int32 in given range.
    ///
    /// - Parameter range: range of ClosedRange<Int32>.
    static func int32(in range: ClosedRange<Int32>) -> RandomInteger<Int32> {
        .init(range: range)
    }

    /// Random Int64 in Int64.min...Int64.max.
    static func int64() -> RandomInteger<Int64> {
        .init(range: Int64.min...Int64.max)
    }

    /// Random Int64 in given range.
    ///
    /// - Parameter range: range of Range<Int64>.
    static func int64(in range: Range<Int64>) -> RandomInteger<Int64> {
        .init(range: range)
    }

    /// Random Int64 in given range.
    ///
    /// - Parameter range: range of ClosedRange<Int64>.
    static func int64(in range: ClosedRange<Int64>) -> RandomInteger<Int64> {
        .init(range: range)
    }

    /// Random UInt in UInt.min...UInt.max.
    static func uint() -> RandomInteger<UInt> {
        .init(range: UInt.min...UInt.max)
    }

    /// Random UInt in given range.
    ///
    /// - Parameter range: range of Range<UInt>.
    static func uint(in range: Range<UInt>) -> RandomInteger<UInt> {
        .init(range: range)
    }

    /// Random UInt in given range.
    ///
    /// - Parameter range: range of ClosedRange<UInt>.
    static func uint(in range: ClosedRange<UInt>) -> RandomInteger<UInt> {
        .init(range: range)
    }

    /// Random UInt8 in UInt8.min...UInt8.max.
    static func uint8() -> RandomInteger<UInt8> {
        .init(range: UInt8.min...UInt8.max)
    }

    /// Random UInt8 in given range.
    ///
    /// - Parameter range: range of Range<UInt8>.
    static func uint8(in range: Range<UInt8>) -> RandomInteger<UInt8> {
        .init(range: range)
    }

    /// Random UInt8 in given range.
    ///
    /// - Parameter range: range of ClosedRange<UInt8>.
    static func uint8(in range: ClosedRange<UInt8>) -> RandomInteger<UInt8> {
        .init(range: range)
    }

    /// Random UInt16 in UInt16.min...UInt16.max.
    static func uint16() -> RandomInteger<UInt16> {
        .init(range: UInt16.min...UInt16.max)
    }

    /// Random UInt16 in given range.
    ///
    /// - Parameter range: range of Range<UInt16>.
    static func uint16(in range: Range<UInt16>) -> RandomInteger<UInt16> {
        .init(range: range)
    }

    /// Random UInt16 in given range.
    ///
    /// - Parameter range: range of ClosedRange<UInt16>.
    static func uint16(in range: ClosedRange<UInt16>) -> RandomInteger<UInt16> {
        .init(range: range)
    }

    /// Random UInt32 in UInt32.min...UInt32.max.
    static func uint32() -> RandomInteger<UInt32> {
        .init(range: UInt32.min...UInt32.max)
    }

    /// Random UInt32 in given range.
    ///
    /// - Parameter range: range of Range<UInt32>.
    static func uint32(in range: Range<UInt32>) -> RandomInteger<UInt32> {
        .init(range: range)
    }

    /// Random UInt32 in given range.
    ///
    /// - Parameter range: range of ClosedRange<UInt32>.
    static func uint32(in range: ClosedRange<UInt32>) -> RandomInteger<UInt32> {
        .init(range: range)
    }

    /// Random UInt64 in UInt64.min...UInt64.max.
    static func uint64() -> RandomInteger<UInt64> {
        .init(range: UInt64.min...UInt64.max)
    }

    /// Random UInt64 in given range.
    ///
    /// - Parameter range: range of Range<UInt64>.
    static func uint64(in range: Range<UInt64>) -> RandomInteger<UInt64> {
        .init(range: range)
    }

    /// Random UInt64 in given range.
    ///
    /// - Parameter range: range of ClosedRange<UInt64>.
    static func uint64(in range: ClosedRange<UInt64>) -> RandomInteger<UInt64> {
        .init(range: range)
    }

    /// Random Double in 0....1.
    static func double() -> RandomFloatingPoint<Double> {
        .init(range: Double(0)...Double(1))
    }

    /// Random Double in given range.
    ///
    /// - Parameter range: range of Range<Double>.
    static func double(in range: Range<Double>) -> RandomFloatingPoint<Double> {
        .init(range: range)
    }

    /// Random Double in given range.
    ///
    /// - Parameter range: range of ClosedRange<Double>.
    static func double(in range: ClosedRange<Double>) -> RandomFloatingPoint<Double> {
        .init(range: range)
    }

    /// Random Float in 0....1.
    static func float() -> RandomFloatingPoint<Float> {
        .init(range: Float(0)...Float(1))
    }

    /// Random Float in given range.
    ///
    /// - Parameter range: range of Range<Float>.
    static func float(in range: Range<Float>) -> RandomFloatingPoint<Float> {
        .init(range: range)
    }

    /// Random Float in given range.
    ///
    /// - Parameter range: range of ClosedRange<Float>.
    static func float(in range: ClosedRange<Float>) -> RandomFloatingPoint<Float> {
        .init(range: range)
    }

    /// Random Float16 in 0....1.
    @available(iOS 14.0, watchOS 7.0, tvOS 14.0, *)
    @available(macOS, unavailable)
    @available(macCatalyst, unavailable)
    static func float16() -> RandomFloatingPoint<Float16> {
        .init(range: Float16(0)...Float16(1))
    }

    /// Random Float16 in given range.
    ///
    /// - Parameter range: range of Range<Float16>.
    @available(iOS 14.0, watchOS 7.0, tvOS 14.0, *)
    @available(macOS, unavailable)
    @available(macCatalyst, unavailable)
    static func float16(in range: Range<Float16>) -> RandomFloatingPoint<Float16> {
        .init(range: range)
    }

    /// Random Float16 in given range.
    ///
    /// - Parameter range: range of ClosedRange<Float16>.
    @available(iOS 14.0, watchOS 7.0, tvOS 14.0, *)
    @available(macOS, unavailable)
    @available(macCatalyst, unavailable)
    static func float16(in range: ClosedRange<Float16>) -> RandomFloatingPoint<Float16> {
        .init(range: range)
    }

}

// MARK: Enumerations
public extension Random {

    /// Random case of caseIterable enumeration type.
    ///
    /// - Parameter type: type of caseIterable enumeration.
    static func `case`<T>(in type: T.Type) -> RandomEnum<T> where T: CaseIterable {
        .init(type: T.self)
    }

}

// MARK: Tuples
public extension Random {

    /// Random tuple from corresponding collections.
    ///
    /// - Parameter collection1: data source of 1st component.
    /// - Parameter collection2: data source of 2nd component.
    static func tuple<C1, C2,
                      T1, T2>(
        from collection1: C1,
        _ collection2: C2) -> RandomTuple2<T1, T2>
    where C1: Collection,
          C2: Collection,
          C1.Element == T1,
          C2.Element == T2 {
        .init(
            AnyCollection(collection1),
            AnyCollection(collection2))
    }

    /// Random tuple from corresponding collections.
    ///
    /// - Parameter collection1: data source of 1st component.
    /// - Parameter collection2: data source of 2nd component.
    /// - Parameter collection3: data source of 3rd component.
    static func tuple<C1, C2, C3,
                      T1, T2, T3>(
        from collection1: C1,
        _ collection2: C2,
        _ collection3: C3) -> RandomTuple3<T1, T2, T3>
    where C1: Collection,
          C2: Collection,
          C3: Collection,
          C1.Element == T1,
          C2.Element == T2,
          C3.Element == T3 {
        .init(
            AnyCollection(collection1),
            AnyCollection(collection2),
            AnyCollection(collection3))
    }

    /// Random tuple from corresponding collections.
    ///
    /// - Parameter collection1: data source of 1st component.
    /// - Parameter collection2: data source of 2nd component.
    /// - Parameter collection3: data source of 3rd component.
    /// - Parameter collection4: data source of 4th component.
    static func tuple<C1, C2, C3, C4,
                      T1, T2, T3, T4>(
        from collection1: C1,
        _ collection2: C2,
        _ collection3: C3,
        _ collection4: C4) -> RandomTuple4<T1, T2, T3, T4>
    where C1: Collection,
          C2: Collection,
          C3: Collection,
          C4: Collection,
          C1.Element == T1,
          C2.Element == T2,
          C3.Element == T3,
          C4.Element == T4 {
        .init(
            AnyCollection(collection1),
            AnyCollection(collection2),
            AnyCollection(collection3),
            AnyCollection(collection4))
    }

    /// Random tuple from corresponding collections.
    ///
    /// - Parameter collection1: data source of 1st component.
    /// - Parameter collection2: data source of 2nd component.
    /// - Parameter collection3: data source of 3rd component.
    /// - Parameter collection4: data source of 4th component.
    /// - Parameter collection5: data source of 5th component.
    static func tuple<C1, C2, C3, C4, C5,
                      T1, T2, T3, T4, T5>(
        from collection1: C1,
        _ collection2: C2,
        _ collection3: C3,
        _ collection4: C4,
        _ collection5: C5) -> RandomTuple5<T1, T2, T3, T4, T5>
    where C1: Collection,
          C2: Collection,
          C3: Collection,
          C4: Collection,
          C5: Collection,
          C1.Element == T1,
          C2.Element == T2,
          C3.Element == T3,
          C4.Element == T4,
          C5.Element == T5 {
        .init(
            AnyCollection(collection1),
            AnyCollection(collection2),
            AnyCollection(collection3),
            AnyCollection(collection4),
            AnyCollection(collection5))
    }

    /// Random tuple from corresponding collections.
    ///
    /// - Parameter collection1: data source of 1st component.
    /// - Parameter collection2: data source of 2nd component.
    /// - Parameter collection3: data source of 3rd component.
    /// - Parameter collection4: data source of 4th component.
    /// - Parameter collection5: data source of 5th component.
    /// - Parameter collection6: data source of 6th component.
    static func tuple<C1, C2, C3, C4, C5, C6,
                      T1, T2, T3, T4, T5, T6>(
        from collection1: C1,
        _ collection2: C2,
        _ collection3: C3,
        _ collection4: C4,
        _ collection5: C5,
        _ collection6: C6) -> RandomTuple6<T1, T2, T3, T4, T5, T6>
    where C1: Collection,
          C2: Collection,
          C3: Collection,
          C4: Collection,
          C5: Collection,
          C6: Collection,
          C1.Element == T1,
          C2.Element == T2,
          C3.Element == T3,
          C4.Element == T4,
          C5.Element == T5,
          C6.Element == T6 {
        .init(
            AnyCollection(collection1),
            AnyCollection(collection2),
            AnyCollection(collection3),
            AnyCollection(collection4),
            AnyCollection(collection5),
            AnyCollection(collection6))
    }

    /// Random tuple from corresponding collections.
    ///
    /// - Parameter collection1: data source of 1st component.
    /// - Parameter collection2: data source of 2nd component.
    /// - Parameter collection3: data source of 3rd component.
    /// - Parameter collection4: data source of 4th component.
    /// - Parameter collection5: data source of 5th component.
    /// - Parameter collection6: data source of 6th component.
    /// - Parameter collection7: data source of 7th component.
    static func tuple<C1, C2, C3, C4, C5, C6, C7,
                      T1, T2, T3, T4, T5, T6, T7>(
        from collection1: C1,
        _ collection2: C2,
        _ collection3: C3,
        _ collection4: C4,
        _ collection5: C5,
        _ collection6: C6,
        _ collection7: C7) -> RandomTuple7<T1, T2, T3, T4, T5, T6, T7>
    where C1: Collection,
          C2: Collection,
          C3: Collection,
          C4: Collection,
          C5: Collection,
          C6: Collection,
          C7: Collection,
          C1.Element == T1,
          C2.Element == T2,
          C3.Element == T3,
          C4.Element == T4,
          C5.Element == T5,
          C6.Element == T6,
          C7.Element == T7 {
        .init(
            AnyCollection(collection1),
            AnyCollection(collection2),
            AnyCollection(collection3),
            AnyCollection(collection4),
            AnyCollection(collection5),
            AnyCollection(collection6),
            AnyCollection(collection7))
    }

    /// Random tuple from corresponding collections.
    ///
    /// - Parameter collection1: data source of 1st component.
    /// - Parameter collection2: data source of 2nd component.
    /// - Parameter collection3: data source of 3rd component.
    /// - Parameter collection4: data source of 4th component.
    /// - Parameter collection5: data source of 5th component.
    /// - Parameter collection6: data source of 6th component.
    /// - Parameter collection7: data source of 7th component.
    /// - Parameter collection8: data source of 8th component.
    static func tuple<C1, C2, C3, C4, C5, C6, C7, C8,
                      T1, T2, T3, T4, T5, T6, T7, T8>(
        from collection1: C1,
        _ collection2: C2,
        _ collection3: C3,
        _ collection4: C4,
        _ collection5: C5,
        _ collection6: C6,
        _ collection7: C7,
        _ collection8: C8) -> RandomTuple8<T1, T2, T3, T4, T5, T6, T7, T8>
    where C1: Collection,
          C2: Collection,
          C3: Collection,
          C4: Collection,
          C5: Collection,
          C6: Collection,
          C7: Collection,
          C8: Collection,
          C1.Element == T1,
          C2.Element == T2,
          C3.Element == T3,
          C4.Element == T4,
          C5.Element == T5,
          C6.Element == T6,
          C7.Element == T7,
          C8.Element == T8 {
        .init(
            AnyCollection(collection1),
            AnyCollection(collection2),
            AnyCollection(collection3),
            AnyCollection(collection4),
            AnyCollection(collection5),
            AnyCollection(collection6),
            AnyCollection(collection7),
            AnyCollection(collection8))
    }

}

// MARK: Containers
public extension Random {

    /// Shuffle sequence.
    ///
    /// - Parameter sequence: data source to be shuffled.
    static func shuffle<S>(_ sequence: S) -> RandomShuffle<S.Element> where S: Sequence {
        .init(sequence: AnySequence(sequence))
    }

    /// Shuffle string.
    ///
    /// - Parameter string: data source to be shuffled.
    static func shuffle<S>(_ string: S) -> RandomShuffleString<S> where S: StringProtocol {
        .init(string: string)
    }

    /// Random element in collection.
    ///
    /// - Parameter collection: data source where random element is chosen.
    static func element<S>(in collection: S) -> RandomElement<S.Element> where S: Collection {
        .init(collection: AnyCollection(collection))
    }

    /// Random element of given range.
    ///
    /// - Parameter range: range of FixedWidthInteger values.
    static func element<T>(in range: Range<T>) -> RandomInteger<T> where T: FixedWidthInteger {
        .init(range: range)
    }

    /// Random element of given range.
    ///
    /// - Parameter range: closed range of FixedWidthInteger values.
    static func element<T>(in range: ClosedRange<T>) -> RandomInteger<T> where T: FixedWidthInteger {
        .init(range: range)
    }

    /// Random element of given range.
    ///
    /// - Parameter range: range of BinaryFloatingPoint values.
    static func element<T>(in range: Range<T>) -> RandomFloatingPoint<T> where T: BinaryFloatingPoint, T.RawSignificand: FixedWidthInteger {
        .init(range: range)
    }

    /// Random element of given range.
    ///
    /// - Parameter range: closed range of BinaryFloatingPoint values.
    static func element<T>(in range: ClosedRange<T>) -> RandomFloatingPoint<T> where T: BinaryFloatingPoint, T.RawSignificand: FixedWidthInteger {
        .init(range: range)
    }

    /// Random index in collection.
    ///
    /// - Parameter collection: data source where random index is chosen.
    static func index<S>(in collection: S) -> RandomDefaultIndex<S> where S: Collection, S.Indices == DefaultIndices<S> {
        .init(collection: collection)
    }

    /// Random index in collection.
    ///
    /// - Parameter collection: data source where random index is chosen.
    static func index<S>(in collection: S) -> RandomStridableIndex<S> where S: Collection, S.Index: Strideable, S.Index.Stride: SignedInteger {
        .init(collection: collection)
    }

    /// Random range in collection.
    ///
    /// - Parameter collection: data source where random range is chosen.
    static func range<S>(in collection: S) -> RandomDefaultIndexRange<S> where S: Collection, S.Indices == DefaultIndices<S> {
        .init(collection: collection)
    }

    /// Random range in collection.
    ///
    /// - Parameter collection: data source where random range is chosen.
    static func range<S>(in collection: S) -> RandomStridableIndexRange<S> where S: Collection, S.Index: Strideable, S.Index.Stride: SignedInteger {
        .init(collection: collection)
    }

    /// Random slice in collection.
    ///
    /// - Parameter collection: data source where random slice is chosen.
    static func slice<S>(in collection: S) -> RandomDefaultIndexSlice<S> where S: Collection, S.Indices == DefaultIndices<S> {
        .init(collection: collection)
    }

    /// Random slice in collection.
    ///
    /// - Parameter collection: data source where random slice is chosen.
    static func slice<S>(in collection: S) -> RandomStridableIndexSlice<S> where S: Collection, S.Index: Strideable, S.Index.Stride: SignedInteger {
        .init(collection: collection)
    }

}

// MARK: Optional
public extension Random {

    /// 0.5 possibility to get nil, 0.5 possibility to get given value.
    ///
    /// - Parameter value: value may be optionally.
    static func optional<T>(value: T) -> RandomOptional<T> {
        .init(collection: AnyCollection([value]))
    }

    /// 0.5 possibility to get nil, (0.5 / values.count) possibility to get random value.
    ///
    /// - Parameter values: collection where random value may be choosed.
    static func optional<C, T>(from values: C) -> RandomOptional<T> where C: Collection, C.Element == T {
        .init(collection: AnyCollection(values))
    }

}

// MARK: Result
public extension Random {

    /// Random result whether success value or failure error.
    ///
    /// - Parameter success: success value.
    /// - Parameter failure: failure error.
    static func result<T, E>(success: T, failure: E) -> RandomResult<T, E> where E: Swift.Error {
        .init(succusses: AnyCollection([success]), failures: AnyCollection([failure]))
    }

    /// Random result whether success value from success collection or failure error from failure collection.
    ///
    /// - Parameter successes: collection where success value is chosen.
    /// - Parameter failures: collection where failure error is chosen.
    static func result<CT, CE, T, E>(
        from successes: CT,
        failures: CE)
    -> RandomResult<T, E>
    where E: Swift.Error,
          CT: Collection,
          CE: Collection,
          CT.Element == T,
          CE.Element == E {
        .init(succusses: AnyCollection(successes), failures: AnyCollection(failures))
    }

}

// MARK: Regex Pattern Matching
public extension Random {

    /// Random string which matches given regex pattern.
    ///
    /// - Parameter pattern: regex pattern which result string is satisfied.
    static func string(match pattern: String) -> RandomRegex {
        .init(pattern: pattern)
    }

}

// MARK: Foundation
public extension Random {

    /// Random timeInterval in given range.
    ///
    /// - Parameter range: TimeInterval range which result timeInterval is chosen.
    static func timeInterval(in range: Range<TimeInterval>) -> RandomFloatingPoint<TimeInterval> {
        .init(range: range)
    }

    /// Random timeInterval in given range.
    ///
    /// - Parameter range: TimeInterval range which result timeInterval is chosen.
    static func timeInterval(in range: ClosedRange<TimeInterval>) -> RandomFloatingPoint<TimeInterval> {
        .init(range: range)
    }

    /// Random UUID string.
    ///
    /// - Parameter shorten: whether UUID is cut off "-". default false.
    static func uuid(shorten: Bool = false) -> RandomUUID {
        .init(shorten: shorten)
    }

    /// Random locale.
    static func locale() -> RandomLocale {
        .init()
    }

    /// Random timeZone.
    static func timeZone() -> RandomTimeZone {
        .init()
    }

}

// MARK: CoreGraphics
#if canImport(CoreGraphics)
public extension Random {

    /// Random CGFloat in CGFloat.min...CGFloat.max.
    static func cgfloat() -> RandomFloatingPoint<CGFloat> {
        .init(range: CGFloat(0)...CGFloat(1))
    }

    /// Random CGFloat in given range.
    ///
    /// - Parameter range: range of Range<CGFloat>.
    static func cgfloat(in range: Range<CGFloat>) -> RandomFloatingPoint<CGFloat> {
        .init(range: range)
    }

    /// Random CGFloat in given range.
    ///
    /// - Parameter range: range of ClosedRange<CGFloat>.
    static func cgfloat(in range: ClosedRange<CGFloat>) -> RandomFloatingPoint<CGFloat> {
        .init(range: range)
    }

    /// Random CGPoint in given rect.
    ///
    /// - Parameter rect: CGRect where point is chosen.
    static func cgpoint(in rect: CGRect) -> RandomCGPoint {
        .init(bounding: rect)
    }

    /// Random CGSize in given size.
    ///
    /// - Parameter size: CGSize which contains result size.
    static func cgsize(in size: CGSize) -> RandomCGSize {
        .init(bounding: size)
    }

    /// Random CGSize in given rect.
    ///
    /// - Parameter rect: CGRect which size contains result size.
    static func cgsize(in rect: CGRect) -> RandomCGSize {
        .init(bounding: rect.size)
    }

    /// Random CGRect contained in given rect.
    ///
    /// - Parameter rect: CGRect which contains result rect.
    static func cgrect(in rect: CGRect) -> RandomCGRect {
        .init(bounding: rect)
    }

    /// Random CGVector.
    ///
    /// - Parameter dxRange: dx range of result vector.
    /// - Parameter dyRange: dy range of result vector.
    static func cgvector(dxRange: ClosedRange<CGFloat>, dyRange: ClosedRange<CGFloat>) -> RandomCGVector {
        .init(dxRange: dxRange, dyRange: dyRange)
    }

    /// Random CGVector.
    ///
    /// - Parameter dx: fixed dx value of result vector.
    /// - Parameter dyRange: dy range of result vector.
    static func cgvector(dx: CGFloat, dyRange: ClosedRange<CGFloat>) -> RandomCGVector {
        .init(dxRange: dx...dx, dyRange: dyRange)
    }

    /// Random CGVector.
    ///
    /// - Parameter dxRange: dx range of result vector.
    /// - Parameter dy: fixed dy value of result vector
    static func cgvector(dxRange: ClosedRange<CGFloat>, dy: CGFloat) -> RandomCGVector {
        .init(dxRange: dxRange, dyRange: dy...dy)
    }

}

// MARK: Sampling
public extension Random {

    /// Sampling Type
    enum Sampling { }

    /// Begin sampling.
    static let sample: Sampling.Type = Sampling.self

}

public extension Random.Sampling {

    /// Sample value from collection, which element sampling weight is from given props array.
    ///
    /// - Parameter collection: data source which element is chosen from.
    /// - Parameter props: probability  array of each element in collection, sum of props should be 1. each element value in [0, 1].
    static func value<C>(from collection: C, props: [Double]) -> RandomWeightsSampling<C.Element> where C: Collection {
        .init(collection: AnyCollection(collection), weights: props)
    }

    /// Sampling value satisfied Geometric Distribution.
    ///
    /// Geometric distribution is the probability distribution of the number X of Bernoulli trials needed to get one success(the first success). Result value is in { 1, 2, 3, ... }.
    ///
    /// - Parameter successProp: probability of success result in one Bernoulli trial. value in [0, 1].
    /// - Result: generate total rounds of Bernoulli trials when first success occured. result in { 1, 2, 3, ... }.
    static func geometric<T>(successProp: T) -> RandomGeometricSampling where T: BinaryFloatingPoint {
        .init(successProp: Double(successProp))
    }

    /// Sampling value satisfied Bernoulli Distribution.
    ///
    /// Bernoulli distribution is the discrete probability distribution of a random variable which takes the value 1 with probability p {\displaystyle p} p and the value 0 with probability q = 1 − p {\displaystyle q=1-p} {\displaystyle q=1-p}. Result value is in { true, false }.
    ///
    /// - Parameter successProp: probability of success result in one Bernoulli trial. value in [0, 1].
    /// - Result: generate true as success trial, or false as failure trial.
    static func bernoulli<T>(successProp: T) -> RandomBernoulliSampling where T: BinaryFloatingPoint {
        .init(successProp: Double(successProp))
    }

    /// Sampling value satisfied Poisson Distribution.
    ///
    /// Poisson distribution is a discrete probability distribution that expresses the probability of a given number of events occurring in a fixed interval of time or space if these events occur with a known constant mean rate and independently of the time since the last event. Result value is in { 0, 1, 2,  ... }.
    ///
    /// - Parameter lamda: average occur rounds in unit interval.
    /// - Result: generate total occur rounds in unit range. result in { 0, 1, 2, ... }.
    static func poisson<T>(lamda: T) -> RandomPoissonSampling where T: BinaryFloatingPoint {
        .init(lamda: Double(lamda))
    }

    /// Sampling value satisfied Binomial Distribution.
    ///
    /// Binomial distribution with parameters n and p is the discrete probability distribution of the number of successes in a sequence of n independent experiments, each asking a yes–no question, and each with its own Boolean-valued outcome: success (with probability p) or failure (with probability q = 1 − p). Result value is in { 0, 1, 2,  ... , n }.
    ///
    /// - Parameter total: total rounds of independent Bernoulli trials.
    /// - Parameter successProp: probability of success result in one Bernoulli trial. value in [0, 1].
    /// - Result: generate total success rounds of Bernoulli trials.
    static func binomial<T>(total: Int, successProp: T) -> RandomBinomialSampling where T: BinaryFloatingPoint {
        .init(total: total, successProp: Double(successProp))
    }
    
    /// Sampling value satisfied Exponential Distribution.
    ///
    /// Exponential distribution is the probability distribution of the time between events in a Poisson point process, i.e., a process in which events occur continuously and independently at a constant average rate. It is a particular case of the gamma distribution. It is the continuous analogue of the geometric distribution, and it has the key property of being memoryless. Result value is in [0, ∞].
    ///
    /// - Parameter lamda: parameter λ of Exponential Distribution. value in (0, ∞).
    /// - Result: generate random variables of Exponential Distribution. value in [0, ∞).
    static func exponential<T>(lamda: T) -> RandomExponentialSampling where T: BinaryFloatingPoint {
        .init(lamda: Double(lamda))
    }

    /// Sampling value satisfied Normal Distribution.
    ///
    /// Normal distributions are important in statistics and are often used in the natural and social sciences to represent real-valued random variables whose distributions are not known. Their importance is partly due to the central limit theorem.
    ///
    /// - Parameter average: average of Normal Distribution.
    /// - Parameter variance: variance of Normal Distribution. value in [0, ∞).
    /// - Result: generate random variables of Normal Distribution.
    static func normal<T, V>(average: T, variance: V) -> RandomNormalSampling where T: BinaryFloatingPoint, V: BinaryFloatingPoint {
        .init(average: Double(average), variance: Double(variance))
    }
    
    /// Sampling value satisfied xy Normal Distribution.
    ///
    /// Normal distributions are important in statistics and are often used in the natural and social sciences to represent real-valued random variables whose distributions are not known. Their importance is partly due to the central limit theorem.
    ///
    /// - Parameter averageX: average of X in xy Normal Distribution.
    /// - Parameter varianceX: variance of x in xy Normal Distribution. value in [0, ∞).
    /// - Parameter averageY: average of Y in xy Normal Distribution.
    /// - Parameter varianceY: variance of Y in xy Normal Distribution. value in [0, ∞).
    /// - Result: generate random xy pair variables of Normal Distribution.
    static func normalXY<T, V, S, D>(
        averageX: T,
        varianceX: V,
        averageY: S,
        varianceY: D) -> RandomNormalXYSampling where T: BinaryFloatingPoint, V: BinaryFloatingPoint, S: BinaryFloatingPoint, D: BinaryFloatingPoint {
        .init(
            averageX: Double(averageX),
            varianceX: Double(varianceX),
            averageY: Double(averageY),
            varianceY: Double(varianceY))
    }
    
}
#endif
