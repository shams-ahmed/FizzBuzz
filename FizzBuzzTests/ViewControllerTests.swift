//
//  ViewControllerTests.swift
//  FizzBuzzTests
//
//  Created by Andrew Marmion on 05/06/2020.
//  Copyright © 2020 Andrew Marmion. All rights reserved.
//

import XCTest
@testable import FizzBuzz

class ViewControllerTests: XCTestCase {

    var viewController : ViewController!

    override func setUp() {
        super.setUp()

        let storyboard = UIStoryboard(name: "Main", bundle: Bundle.main)
        viewController = (storyboard.instantiateViewController(withIdentifier: "ViewController") as! ViewController)
        UIApplication.shared.windows.filter {$0.isKeyWindow}.first?.rootViewController = viewController

        let _ = viewController.view
    }

    override func tearDown() {
        super.tearDown()
    }
    
    func testHasAGame() {
        XCTAssertNotNil(viewController.game)
    }
    
    func testMove1IncrementsScore() {
        viewController.play(move: .number(1))
        let newScore = viewController.gameScore
        XCTAssertEqual(newScore, 1)
    }
    
    func testMove2IncrementScore() {
        viewController.play(move: .number(1))
        viewController.play(move: .number(2))
        let newScore = viewController.gameScore
        XCTAssertEqual(newScore, 2)
    }
    
    func testFizzIncrementScore() {
        viewController.game?.score = 2
        viewController.play(move: .fizz)
        let newScore = viewController.gameScore
        XCTAssertEqual(newScore, 3)
    }
    
    func testBuzzIncrementScore() {
        viewController.game?.score = 4
        viewController.play(move: .buzz)
        let newScore = viewController.gameScore
        XCTAssertEqual(newScore, 5)
    }
    
    func testFizzBuzzIncrementScore() {
        viewController.game?.score = 14
        viewController.play(move: .fizzbuzz)
        let newScore = viewController.gameScore
        XCTAssertEqual(newScore, 15)
    }
    
}
