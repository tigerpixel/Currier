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

    // MARK: Increasing numbers of distinct parameters.

    // Parameter types differ so that changes in order can be detected while testing multiple types.

    func testTwoDistinctParams() {

        func three(first: String, second: Float) -> Int {
            return first.characters.count + Int(second)
        }

        let curried = curry(three)
        let result = curried("a")(2)

        XCTAssertEqual(digitSum(of:2), result)
    }

    func testThreeDistinctParams() {

        func three(first: String, second: Int, third: Float) -> Int {
            return first.characters.count + second + Int(third)
        }

        let curried = curry(three)
        let result = curried("a")(2)(3.0)

        XCTAssertEqual(digitSum(of:3), result)
    }

    func testFourDistinctParams() {

        func four(first: String, second: Int, third: Float, fourth: ReferenceType) -> Int {
            return first.characters.count + second + Int(third) + Int(fourth.value)
        }

        let curried = curry(four)
        let result = curried("a")(2)(3.0)(ReferenceType(value:4.0))

        XCTAssertEqual(digitSum(of:4), result)
    }

    func testFiveDistinctParams() {

        func five(first: String, second: Int, third: Float, fourth: ReferenceType, fifth: ValueType) -> Int {
            return first.characters.count + second + Int(third) + Int(fourth.value) + Int(fifth.value)
        }

        let curried = curry(five)
        let result = curried("a")(2)(3.0)(ReferenceType(value:4.0))(ValueType(value: 5))

        XCTAssertEqual(digitSum(of:5), result)
    }

    // swiftlint:disable function_parameter_count

    func testSixParams() {

        func six(first: String, second: Int, third: Float,
                 fourth: ReferenceType, fifth: ValueType, sixth: Bool) -> Int {

            return first.characters.count + second + Int(third)
                + Int(fourth.value) + Int(fifth.value) + (sixth ? 6 : 0)
        }

        let curried = curry(six)
        let result = curried("a")(2)(3.0)(ReferenceType(value:4.0))(ValueType(value: 5))(true)

        XCTAssertEqual(digitSum(of:6), result)
    }

    // MARK: Increasing numbers of string parameters.

    // Multiple types are now adiquately tested, so revert to just using string types for simplicity.

    func testSevenParams() {

        func seven(first: String, second: String, third: String, fourth: String,
                   fifth: String, sixth: String, seventh: String) -> String {

            return first + second + third + fourth + fifth + sixth + seventh
        }

        let curried = curry(seven)
        let result = curried("1")("2")("3")("4")("5")("6")("7")

        XCTAssertEqual("1234567", result)
    }

    func testEightParams() {

        func eight(first: String, second: String, third: String, fourth: String,
                   fifth: String, sixth: String, seventh: String, eighth: String) -> String {

            return first + second + third + fourth + fifth + sixth + seventh + eighth
        }

        let curried = curry(eight)
        let result = curried("1")("2")("3")("4")("5")("6")("7")("8")

        XCTAssertEqual("12345678", result)
    }

    func testNineParams() {

        func nine(first: String, second: String, third: String,
                  fourth: String, fifth: String, sixth: String,
                  seventh: String, eighth: String, ninth: String) -> String {

            return first + second + third + fourth + fifth + sixth + seventh + eighth + ninth
        }

        let curried = curry(nine)
        let result = curried("1")("2")("3")("4")("5")("6")("7")("8")("9")

        XCTAssertEqual("123456789", result)
    }

    func testTenParams() {

        func ten(first: String, second: String, third: String, fourth: String,
                 fifth: String, sixth: String, seventh: String, eighth: String,
                 ninth: String, tenth: String) -> String {

            return first + second + third + fourth + fifth + sixth + seventh + eighth + ninth + tenth
        }

        let curried = curry(ten)
        let result = curried("1")("2")("3")("4")("5")("6")("7")("8")("9")("A")

        XCTAssertEqual("123456789A", result)
    }

    func testElevenParams() {

        func eleven(first: String, second: String, third: String, fourth: String,
                    fifth: String, sixth: String, seventh: String, eighth: String,
                    ninth: String, tenth: String, eleventh: String) -> String {

            return first + second + third + fourth + fifth + sixth + seventh + eighth + ninth + tenth + eleventh
        }

        let curried = curry(eleven)
        let result = curried("1")("2")("3")("4")("5")("6")("7")("8")("9")("A")("B")

        XCTAssertEqual("123456789AB", result)
    }

    // MARK: The largest size curry methods are tested using a struct initializer.

    // It is the most likely scenario for using a function with this many parameters.

    struct Twelve {

        let first: String
        let second: String
        let third: String
        let fourth: String
        let fifth: String
        let sixth: String
        let seventh: String
        let eighth: String
        let ninth: String
        let tenth: String
        let eleventh: String
        let twelfth: String

        func makeResult() -> String {
            return first + second + third + fourth + fifth + sixth
                + seventh + eighth + ninth + tenth + eleventh + twelfth
        }
    }

    func testTwelveParams() {

        let curried = curry(Twelve.init)
        let resultValue = curried("1")("2")("3")("4")("5")("6")("7")("8")("9")("A")("B")("C")

        XCTAssertEqual("123456789ABC", resultValue.makeResult())
    }

    struct Thirteen {

        let first: String
        let second: String
        let third: String
        let fourth: String
        let fifth: String
        let sixth: String
        let seventh: String
        let eighth: String
        let ninth: String
        let tenth: String
        let eleventh: String
        let twelfth: String
        let thirteenth: String

        func makeResult() -> String {
            return first + second + third + fourth + fifth + sixth
                + seventh + eighth + ninth + tenth + eleventh + twelfth + thirteenth
        }
    }

    func testThirteenParams() {

        let curried = curry(Thirteen.init)
        let resultValue = curried("1")("2")("3")("4")("5")("6")("7")("8")("9")("A")("B")("C")("D")

        XCTAssertEqual("123456789ABCD", resultValue.makeResult())
    }

    struct Fourteen {

        let first: String
        let second: String
        let third: String
        let fourth: String
        let fifth: String
        let sixth: String
        let seventh: String
        let eighth: String
        let ninth: String
        let tenth: String
        let eleventh: String
        let twelfth: String
        let thirteenth: String
        let fourteenth: String

        func makeResult() -> String {
            return first + second + third + fourth + fifth + sixth
                + seventh + eighth + ninth + tenth + eleventh + twelfth
                + thirteenth + fourteenth
        }
    }

    func testFourteenParams() {

        let curried = curry(Fourteen.init)
        let resultValue = curried("1")("2")("3")("4")("5")("6")("7")("8")("9")("A")("B")("C")("D")("E")

        XCTAssertEqual("123456789ABCDE", resultValue.makeResult())
    }

    // swiftlint:enable function_parameter_count

}
