//
//  ViewController.swift
//  FizzBuzz
//
//  Created by Andrew Marmion on 05/06/2020.
//  Copyright © 2020 Andrew Marmion. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    var game: Game?
    
    var gameScore: Int?

    override func viewDidLoad() {
        super.viewDidLoad()
        game = Game()
    }

    func play(move: Brain.State) {
        guard let game = game else {
            return
        }
        let response = game.play(move: move)
        gameScore = response.score
    }
}

