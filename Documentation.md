## Documentation of Randoman

My toolkit to get random data.

### Example

```swift
let value = Random.int(in: -10...10).single()
let element = Random.element(in: [1,2,3,4,5]).single()
let arrangement = Random.shuffle(array).single()
let phones = Random.string(match: "[1][0-9]{10}").batch(count: 10)
let trial = Random.sample.bernoulli(successProp: 0.25).single()
```

### Supports

1. Generating one random value, or an array of random values in same type.

2. Generating random value in basic types, such as int, double, bool.

3. Generating random case from given CaseIterable enumeration.

4. Generating random tuples from several collections.

5. Generating nil or value randomly.

6. Generating success value or failure error randomly in Result<Success, Failure> type.

7. Generating random value in other common types in Foundation & CoreGraphics frameworks.

8. Generating random pattern strings.

9. Choosing element, index, slice, range from collections, and shuffling collections.

10. Sampling values satisfied common distributions, such as Bernoulli, Geometric, etc.

### Style of Usage

All callings in Randoman framework begins with Random, and ends with single() if you want to generate one value, or batch(count:) if you want to generate one values array.

```swift
let value = Random.XXX().single()
let values = Random.XXX().batch(count: 10)

let value = Random.XXX().single(using: &generator)
let values = Random.XXX().batch(count: 10, using: &generator)
```

### Basic Types

Use following functions to generate random value in basic types:

```swift
let bool = Random.bool().single()

let int_1 = Random.int().single()
let int_2 = Random.int(in: 0...10).single()
let int_3 = Random.int(in: 0..<10).single()
let int8_1 = Random.int8().single()
// ...
let uint_1 = Random.uint().single()
let uint_2 = Random.uint(in: 0...10).single()
let uint_3 = Random.uint(in: 0..<10).single()
let uint8_1 = Random.uint8().single()
// ...

let double_1 = Random.double().single() // in 0...1
let double_2 = Random.double(in: 0...10).single()
let double_3 = Random.double(in: 0..<10).single()

let float_1 = Random.float().single() // in 0...1
let float_2 = Random.float(in: 0...10).single()
let float_3 = Random.float(in: 0..<10).single()

let float16_1 = Random.float16().single() // in 0...1. iOS 14.0, watchOS 7.0, tvOS 14.0
let float16_2 = Random.float16(in: 0...10).single() // iOS 14.0, watchOS 7.0, tvOS 14.0
let float16_3 = Random.float16(in: 0..<10).single() // iOS 14.0, watchOS 7.0, tvOS 14.0
```

### CaseIterable Enumerations

Use following function to generate random case from given CaseIterable enumeration:

```swift
enum Gender: String, CaseIterable {
    case male
    case female
}
let one = Random.case(in: Gender.self).single() // may generate .female
let array = Random.case(in: Gender.self).batch(count: 10)
```

### Tuples

Use following functions to generate random tuples from given collections:

```swift
let t2 = Random.tuple(
    from: collection1, 
    collection2).single()
let t3 = Random.tuple(
    from: collection1, 
    collection2, 
    collection3).single()
// ...
let t8 = Random.tuple(
    from: collection1, 
    collection2, 
    collection3,
    collection4,
    collection5,
    collection6,
    collection7,
    collection8).single()

let example = Random.tuple(
    from: [1, 2, 3],
    "abc").single() // may generate (2, "c")
```

### Optional Values

Use following functions to generate nil or value randomly:

```swift
// value may be nil, or given value in equal possibility.
let value = Random.optional(givenValue).single()

// value2 may by nil in 0.5 possibility, or random element in given collection.
let value2 = Random.optional(from: givenCollection).single()
```

### Result Types

Use following functions to generate success value or failure error randomly in Result<Success, Failure> type:

```swift
// result1 may be given value in 0.5 possibility, or given error other wise.
let result1 = Random.result(success: givenValue, failure: givenError).single()

// result2 may be success in 0.5 possibility, then get random value in given collection, or random error in given error collections.
let result2 = Random.result(from: givenCollection, failure: givenErrors).single()
```

**Notice** : In function result(from:failure:), if successes is empty, then only error will be chosen, or if failures is empty, then only success value will be chosen.

### Foundation & CoreGraphics Types

Use following functions to generate random data in other types in Foundation or CoreGraphics frameworks:

```swift
// random CGFloat
let cgfloat_1 = Random.cgfloat().single() // in 0...1
let cgfloat_2 = Random.cgfloat(in: 0...10).single()
let cgfloat_3 = Random.cgfloat(in: 0..<10).single()

// random CGPoint contained in given CGRect.
let cgpoint = Random.cgpoint(in: givenCGRect).single()

// Random CGSize contained in given CGSize or CGRect.
let cgsize1 = Random.cgsize(in: givenCGSize).single()
let cgsize2 = Random.cgsize(in: givenCGRect).single()

// Random CGRect contained in given CGRect.
let cgrect = Random.cgrect(in: givenCGRect).single()

// Random CGVector which dx in dxRange and dy in dyRange.
let cgvector = Random.cgvector(dxRange: 0...10, dyRange: 0...10).single()

// Random TimeInterval.
let ts = Date().timeIntervalSince1970
let timeInterval = Random.timeInterval(in: ts...(ts + 10000)).single()
let timeInterval2 = Random.timeInterval(in: ts..<(ts + 10000)).single()

// Random Locale.
let locale = Random.locale().single()

// Random TimeZone.
let timeZone = Random.timeZone().single()

// Random UUID.
let uuid = Random.uuid().single()
```

### Pattern Strings

Randoman tries to generate strings satisfied given regex pattern. To archive this goal, I import a JS framework [randexp.js(v0.5.3)](https://github.com/fent/randexp.js) in Randoman.

Using following function to generate strings satisfied given regex pattern:

```swift
// generate a phone, one result such as: "12307323611".
let phone = Random.string(match: "[1][0-9]{10}").single()
```

### Random in Containers

Several collection or sequence sampling functions are moved in Random. They are introduced as following.

#### 1. Shuffle

Shuffle given sequence or string. There is a little difference between general sequence and string after shuffled.

```swift
let arrangement = Random.shuffle([1, 2, 3, 4]).single() // may generate [1, 3, 4, 2]
let stringShuffled = Random.shuffle("123456").single() // may generate "143625"
```

#### 2. Element

Random element will be chosen in given collection or range. There is a little difference between collection and range, but you don`t need to notice it.

```swift
let e1 = Random.element(in: 0.0...10.0).single() // may generate 0.718281828459045
let e2 = Random.element(in: 0.0..<10.0).single() // may generate 0.999999999999999
let e3 = Random.element(in: 0...10).single() // may generate 10
let e4 = Random.element(in: 0..<10).single() // may generate 9
let e5 = Random.element(in: [1, 2, 3, 4, 5]]).single() // may generate 3
let e6 = Random.element(in: "123456"]).single() // may generate Chatacter "3"
```

#### 3. Index

Random index in given collection will be chosen. Some index type is different in different collections, but you don`t need to notice it.

```swift
let index1 = Random.index(in: 10...30).single() // may generate 0
let index2 = Random.index(in: 10..<30).single() // may result 19
let index3 = Random.index(in: [1, 2, 3, 4]).single() // may result 0
let index4 = Random.index(in: "123456").single() // may result "123456".startIndex
```

#### 4. Slice

Random continuous element slice will be chosen in given collection. Some index type is different in different collections, but you don`t need to notice it.

```swift
let slice1 = Random.slice(in: 0...10).single() // may generate 1...8
let slice2 = Random.slice(in: 0..<10).single() // may generate 4..<8
let slice3 = Random.slice(in: [1, 2, 3, 4, 5]).single() // may generate [3, 4]
let slice4 = Random.slice(in: "12345").single() // may generate "234"
```

**Notice** : Slice is not recommended using in Set and Dictionary types, because there is no connection between their continuous elements.

#### 5. Range

Random range in given collection will be chosen. Some index type is different in different collections, but you don`t need to notice it. Using collection[range] you will get the corresponding slice in the collection.

```swift
let range1 = Random.range(in: 0...10).single()
let range2 = Random.range(in: 0..<10).single()
let range3 = Random.range(in: [1, 2, 3, 4, 5]).single()
let range4 = Random.range(in: "12345").single()
```

**Notice** : Range is not recommended using in Set and Dictionary types, because there is no connection between their continuous elements.

### Sampling Distributions

In order to generate random value satisfied given distribution, I study hard to learn [Simulation](https://www.amazon.com/Simulation-Sheldon-M-Ross/dp/0124158250/ref=sr_1_7?dchild=1&keywords=Simulation&qid=1629972015&sr=8-7). Algorithms are basically same within this book. If I have time, I will compare these algorithms with other packages, such as numpy.random. 

#### 1. Discrete Distribution by Custom Proprobabilities

Generate value from given collection, which element`s chosen probability is the value of the same position in props array.

```swift
let value = Random.sample.value(from: "abcd", props: [0.3, 0.4, 0.1, 0.2]).single() // may generate "a" with 0.3 probability.
```

#### 2. Geometric Distribution

Generate value in Geometric Distribution, which means the total rounds of Bernoulli trials when first success occurred. Result is in { 1, 2, 3, ... }.

```swift
let value = Random.sample.geometric(successProp: 0.25).single()
```

#### 3. Bernoulli Distribution

Generate value in Bernoulli Distribution, which means true if a trial is success, of false if a trial is failure. Result is in { true, false }.

```swift
let value = Random.sample.bernoulli(successProp: 0.25).single()
```

#### 4. Poisson Distribution

Generate value in Poisson Distribution, which means a given number of events occurring in a fixed interval of time or space if these events occur with a known constant mean rate and independently of the time since the last event. Result is in { 0, 1, 2, ... }.

```swift
let value = Random.sample.poisson(lamda: 12).single()
```

#### 5. Binomial Distribution

Generate value in Binomial Distribution, which means in n Bernoulli trials, the total number of success trials with same success proprobability. Result is in { 0, 1, 2, ..., n }.

```swift
let value = Random.sample.binomial(total: 10, successProp: 0.25).single()
```

#### 6. Exponential Distribution

Generate value in Exponential Distribution. Result is in (0, ∞).

```swift
let value = Random.sample.exponential(lamda: 12).single()
```

#### 7. Normal Distribution

Generate value in Exponential Distribution. Result is in (-∞, ∞).

```swift
let value = Random.sample.normal(average: 0, variance: 1)
```

### Fatal Error Triggers

Some wrong usage of Randoman will cause fatal error, just as follows:

1. Range or ClosedRange wrong usage, when range`s upper bound is less than lower bound.

2. No case exists in CaseIterable enumeration when using Random.case(in: SomeType.self).

3. Collection is empty when some usage requires at least one element in collection.

### Version

0.1.0

### Installation

You can install Randoman by using Cocoapods:

```ruby
pod 'Randoman'
```

### Requirement

- iOS 10.0+

- Xcode 10.0+

- Swift 5.0+
