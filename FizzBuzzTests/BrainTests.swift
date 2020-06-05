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

    func testIsDivisibleByThree() {
        let brain = Brain()
        let result = brain.isDivisibleByThree(number: 3)
        XCTAssertEqual(result, true)
    }
    
    func testIsNotDivisibleByThree() {
        let brain = Brain()
        let result = brain.isDivisibleByThree(number: 1)
        XCTAssertEqual(result, false)
    }
    
    func testIsDivisibleByFive() {
        let brain = Brain()
        let result = brain.isDivisibleByFive(number: 5)
        XCTAssertEqual(result, true)
    }
    
    func testIsNotDivisibleByFive() {
        let brain = Brain()
        let result = brain.isDivisibleByFive(number: 6)
        XCTAssertEqual(result, false)
    }
    
    func testIsDivisibleByFifteen() {
        let brain = Brain()
        let result = brain.isDivisibleByFifteen(number: 15)
        XCTAssertEqual(result, true)
    }
    
    func testIsNotDivisibleByFifteen() {
        let brain = Brain()
        let result = brain.isDivisibleByFifteen(number: 5)
        XCTAssertEqual(result, false)
    }
    
    func testSayFizz() {
        let brain = Brain()
        let result = brain.check(number: 3)
        XCTAssertEqual(result, Brain.State.fizz)
    }
    
    func testSayBuzz() {
        let brain = Brain()
        let result = brain.check(number: 5)
        XCTAssertEqual(result, Brain.State.buzz)
    }
    
    func testSayFizzBuzz() {
        let brain = Brain()
        let result = brain.check(number: 15)
        XCTAssertEqual(result, Brain.State.fizzbuzz)
    }
    
    func testSayNumber() {
        let brain = Brain()
        let result = brain.check(number: 2)
        XCTAssertEqual(result, Brain.State.number)
    }

}
