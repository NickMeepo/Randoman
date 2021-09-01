## Randoman

My toolkit to get random data.

### Example:

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

### Version

0.1.0

### Installation

### Documentation

[Link](https://github.com/NickMeepo/Randoman/blob/main/Documentation.md)

### Requirement

- iOS 10.0+ / Mac OS X 10.15+ / tvOS 10.0+

- Xcode 10.0+

- Swift 5.0+
