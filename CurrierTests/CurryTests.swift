//
//  CurryTests.swift
//  Currier
//
//  Created by Liam on 14/02/2017.
//  Copyright © 2017 Tigerpixel Ltd. All rights reserved.
//

import XCTest
@testable import Currier

class CurryTests: XCTestCase {

    // MARK: Helper types.

    class ReferenceType {

        let value: Float

        init(value: Float) {
            self.value = value
        }

    }

    struct ValueType {

        let value: Float

    }

    // MARK: Helper functions.

    func digitSum(of value: Int) -> Int {
        return (0...value).reduce(0) { $0 + $1 }
    }

    // MARK: Two parameters with basic types.

    func testDigitSumHelperFunction() {

        XCTAssertEqual(0, digitSum(of:0))
        XCTAssertEqual(1, digitSum(of:1))
        XCTAssertEqual(3, digitSum(of:2))
        XCTAssertEqual(6, digitSum(of:3))
        XCTAssertEqual(55, digitSum(of:10))
        XCTAssertEqual(153, digitSum(of:17))
    }

    func testTwoStringParams() {

        func twoStrings(first: String, second: String) -> String {
            return first + second
        }

        let curried = curry(twoStrings)
        let partiallyApplied = curried("first")
        let result = partiallyApplied("Second")

        XCTAssertEqual("firstSecond", result)
    }

    func testTwoIntParams() {

        func twoInts(first: Int, second: Int) -> Int {
            return first + second
        }

        let curried = curry(twoInts)
        let partiallyApplied = curried(3)
        let result = partiallyApplied(6)

        XCTAssertEqual(9, result)
    }

    // MARK: Two parameters intermediate types.

    func testTwoRefTypeParams() {

        func twoReferenceTypes(first: ReferenceType, second: ReferenceType) -> ReferenceType {
            return ReferenceType(value:first.value + second.value)
        }

        let curried = curry(twoReferenceTypes)
        let partiallyApplied = curried(ReferenceType(value:3))
        let result = partiallyApplied(ReferenceType(value:6))

        XCTAssertEqual(9, result.value)
    }

    func testTwoStructParams() {

        func twoStructs(first: ValueType, second: ValueType) -> ValueType {
            return ValueType(value:first.value + second.value)
        }

        let curried = curry(twoStructs)
        let partiallyApplied = curried(ValueType(value:3))
        let result = partiallyApplied(ValueType(value:6))

        XCTAssertEqual(9, result.value)
    }

    func testOperatorWithTwoParams() {

        let result = curry(*)(2)(3)
        XCTAssertEqual(6, result)
    }

    func testTwoGenericParams() {

        func twoGenerics<A: Comparable>(first: A, second: A) -> A {
            return first > second ? first : second
        }

        let result = curry(twoGenerics)("alpha")("beta")

        XCTAssertEqual("beta", result)
    }

    func testTwoDistinctParams() {

        func three(first: String, second: Int) -> Int {
            return first.characters.count + second
        }

        let curried = curry(three)
        let result = curried("a")(2)

        XCTAssertEqual(digitSum(of:2), result)
    }

    // MARK: Increasing numbers of parameters.

    // Parameter types differ so that changes in order can be detected while testing multiple types.

    func testThreeParams() {

        func three(first: String, second: Int, third: Float) -> Int {
            return first.characters.count + second + Int(third)
        }

        let curried = curry(three)
        let result = curried("a")(2)(3.0)

        XCTAssertEqual(digitSum(of:3), result)
    }

    func testFourParams() {

        func four(first: String, second: Int, third: Float, fourth: ReferenceType) -> Int {
            return first.characters.count + second + Int(third) + Int(fourth.value)
        }

        let curried = curry(four)
        let result = curried("a")(2)(3.0)(ReferenceType(value:4.0))

        XCTAssertEqual(digitSum(of:4), result)
    }

    func testFiveParams() {

        func five(first: String, second: Int, third: Float, fourth: ReferenceType, fifth: ValueType) -> Int {
            return first.characters.count + second + Int(third) + Int(fourth.value) + Int(fifth.value)
        }

        let curried = curry(five)
        let result = curried("a")(2)(3.0)(ReferenceType(value:4.0))(ValueType(value: 5))

        XCTAssertEqual(digitSum(of:5), result)
    }

}
