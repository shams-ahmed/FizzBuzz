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
        game.play(move: .number)
        XCTAssertTrue(game.score == 1)
    }

    func testOnPlayTwiceScoreIncremented() {
        game.score = 1
        game.play(move: .number)
        XCTAssertTrue(game.score == 2)
    }

    func testIfMoveIsRight() {
        game.score = 2
        let result = game.play(move: .fizz)
        XCTAssertEqual(result.right, true)
    }

    func testIfMoveIsWrong() {
        game.score = 1
        let result = game.play(move: .fizz)
        XCTAssertEqual(result.right, false)
    }

    func testIfBuzzMoveRight() {
        game.score = 4
        let result = game.play(move: .buzz)
        XCTAssertEqual(result.right, true)
    }

    func testIfBuzzMoveWrong() {
        game.score = 1
        let result = game.play(move: .buzz)
        XCTAssertEqual(result.right, false)
    }

    func testIfFizzBuzzMoveRight() {
        game.score = 14
        let result = game.play(move: .fizzbuzz)
        XCTAssertEqual(result.right, true)
    }

    func testIfFizzBuzzMoveWrong() {
        game.score = 1
        let result = game.play(move: .fizzbuzz)
        XCTAssertEqual(result.right, false)
    }

    func testIfNumberMoveRight() {
        game.score = 1
        let result = game.play(move: .number)
        XCTAssertEqual(result.right, true)
    }

    func testIfNumberMoveWrong() {
        game.score = 2
        let result = game.play(move: .number)
        XCTAssertEqual(result.right, false)
    }

    func testPlayShouldReturnIfMoveRight() {
        let response = game.play(move: .number)
        XCTAssertNotNil(response.right)
    }

    func testPlayShouldReturnNewScore() {
        let response = game.play(move: .number)
        XCTAssertNotNil(response.score)
    }
}
