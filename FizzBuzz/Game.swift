//
//  Game.swift
//  FizzBuzz
//
//  Created by Andrew Marmion on 05/06/2020.
//  Copyright © 2020 Andrew Marmion. All rights reserved.
//

import Foundation

class Game {
    var score: Int
    
    let brain: Brain
    
    init() {
        score = 0
        brain = Brain()
    }
    
    @discardableResult
    func play(move: Brain.State) -> Bool{
        let result = brain.check(number: score + 1)
        if result == move {
            score += 1
            return true
        } else {
            return false
        }
    }
}
