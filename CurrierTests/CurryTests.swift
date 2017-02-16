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
    
    struct ValueType {
        let value: Float
    }
    
    class ReferenceType {
        
        let value: Float
        
        init(value: Float) {
            self.value = value
        }
        
    }
    
    // MARK: Two parameters with basic types.
    
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
    
    func testTwoStructParams() {
        
        func twoStructs(first: ValueType, second: ValueType) -> ValueType {
            return ValueType(value:first.value + second.value)
        }
        
        let curried = curry(twoStructs)
        let partiallyApplied = curried(ValueType(value:3))
        let result = partiallyApplied(ValueType(value:6))
        
        XCTAssertEqual(9, result.value)
    }
    
    func testTwoRefTypeParams() {
        
        func twoReferenceTypes(first: ReferenceType, second: ReferenceType) -> ReferenceType {
            return ReferenceType(value:first.value + second.value)
        }
        
        let curried = curry(twoReferenceTypes)
        let partiallyApplied = curried(ReferenceType(value:3))
        let result = partiallyApplied(ReferenceType(value:6))
        
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
    
    // MARK: Increasing numbers of parameters.
    
    func testThreeeParams() {
        
        func three(first: String, second: String, third: Int) -> Int {
            return first.characters.count + second.characters.count + third
        }
        
        let curried = curry(three)
        let result = curried("a")("Ab")(3)
        
        XCTAssertEqual(6, result)
    }
    
}
