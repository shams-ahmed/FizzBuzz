//
//  Game.swift
//  FizzBuzz
//
//  Created by Andrew Marmion on 05/06/2020.
//  Copyright © 2020 Andrew Marmion. All rights reserved.
//

import Foundation

/// A class that controls the game
class Game {
    
    /// The game score
    var score: Int
    
    
    /// The brain
    let brain: Brain

    /// Creates a new game
    init() {
        score = 0
        brain = Brain()
    }
    
    /// Takes the user's move and checks to see if it is correct
    /// - Parameter move: the move that the user makes
    /// - Returns: A tuple containing whether the move was correct and their score
    @discardableResult
    func play(move: Brain.Move) -> (right: Bool, score: Int) {
        let result = brain.check(number: score + 1)
        if result == move {
            score += 1
            return (true, score)
        } else {
            return (false, score)
        }
    }
}
