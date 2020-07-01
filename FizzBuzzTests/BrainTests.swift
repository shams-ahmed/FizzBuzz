//
//  BrainTests.swift
//  FizzBuzzTests
//
//  Created by Andrew Marmion on 05/06/2020.
//  Copyright © 2020 Andrew Marmion. All rights reserved.
//

import XCTest
@testable import FizzBuzz

class BrainTests: XCTestCase {

    /// Check that a number is divisibile by three
    func testIsDivisibleByThree() {
        let brain = Brain()
        let result = brain.isDivisibleByThree(number: 3)
        XCTAssertEqual(result, true)
    }

    /// Check that a number is not divisible by three
    func testIsNotDivisibleByThree() {
        let brain = Brain()
        let result = brain.isDivisibleByThree(number: 1)
        XCTAssertEqual(result, false)
    }

    /// Check that a number is divisible by five
    func testIsDivisibleByFive() {
        let brain = Brain()
        let result = brain.isDivisibleByFive(number: 5)
        XCTAssertEqual(result, true)
    }

    /// Check that a number is not divisible by five
    func testIsNotDivisibleByFive() {
        let brain = Brain()
        let result = brain.isDivisibleByFive(number: 6)
        XCTAssertEqual(result, false)
    }

    /// Check that a number is divisible by fifteen
    func testIsDivisibleByFifteen() {
        let brain = Brain()
        let result = brain.isDivisibleByFifteen(number: 15)
        XCTAssertEqual(result, true)
    }

    /// Check that a number is not divisible by fifteen
    func testIsNotDivisibleByFifteen() {
        let brain = Brain()
        let result = brain.isDivisibleByFifteen(number: 5)
        XCTAssertEqual(result, false)
    }

    /// Test fizz when number is multiple of three
    func testSayFizz() {
        let brain = Brain()
        let result = brain.check(number: 3)
        XCTAssertEqual(result, Brain.Move.fizz)
    }

    /// Test buzz when number is multiple of five
    func testSayBuzz() {
        let brain = Brain()
        let result = brain.check(number: 5)
        XCTAssertEqual(result, Brain.Move.buzz)
    }

    /// Test fizzbuzz when number is multiple of fifteen
    func testSayFizzBuzz() {
        let brain = Brain()
        let result = brain.check(number: 15)
        XCTAssertEqual(result, Brain.Move.fizzbuzz)
    }

    /// Test number when number is not a multiple of three, five or fifteen
    func testSayNumber() {
        let brain = Brain()
        let result = brain.check(number: 2)
        XCTAssertEqual(result, Brain.Move.number)
    }

}
