//
//  GameTests.swift
//  FizzBuzzTests
//
//  Created by Andrew Marmion on 05/06/2020.
//  Copyright © 2020 Andrew Marmion. All rights reserved.
//

import XCTest
@testable import FizzBuzz

class GameTests: XCTestCase {
    
    let game = Game()
    
    func testGameStartsAtZero() {
        XCTAssertTrue(game.score == 0)
    }
    
    func testOnPLayScoreIncremented() {
        game.play(move: .number(1))
        XCTAssertTrue(game.score == 1)
    }
    
    func testOnPlayTwiceScoreIncremented() {
        game.score = 1
        game.play(move: .number(2))
        XCTAssertTrue(game.score == 2)
    }
    
    func testIfMoveIsRight() {
        game.score = 2
        let result = game.play(move: .fizz)
        XCTAssertEqual(result, true)
    }
    
    func testIfMoveIsWrong() {
        game.score = 1
        let result = game.play(move: .fizz)
        XCTAssertEqual(result, false)
    }
    
    func testIfBuzzMoveRight() {
        game.score = 4
        let result = game.play(move: .buzz)
        XCTAssertEqual(result, true)
    }

    func testIfBuzzMoveWrong() {
        game.score = 1
        let result = game.play(move: .buzz)
        XCTAssertEqual(result, false)
    }

    func testIfFizzBuzzMoveRight() {
        game.score = 14
        let result = game.play(move: .fizzbuzz)
        XCTAssertEqual(result, true)
    }

    func testIfFizzBuzzMoveWrong() {
        game.score = 1
        let result = game.play(move: .fizzbuzz)
        XCTAssertEqual(result, false)
    }

    func testIfNumberMoveRight() {
        game.score = 1
        let result = game.play(move: .number(2))
        XCTAssertEqual(result, true)
    }
    
    func testIfNumberMoveWrong() {
        game.score = 2
        let result = game.play(move: .number(3))
        XCTAssertEqual(result, false)
    }
}
