//
//  ViewController.swift
//  FizzBuzz
//
//  Created by Andrew Marmion on 05/06/2020.
//  Copyright © 2020 Andrew Marmion. All rights reserved.
//

import UIKit

/// The main view of the app.
class ViewController: UIViewController {

    /// The game that the user is playing
    var game: Game?

    /// The user's current score
    ///
    /// When set it automatically updates the numberButton's title
    var gameScore: Int? {
        didSet {
            guard let score = gameScore else { return }
            numberButton.setTitle("\(score)", for: .normal)
        }
    }

    /// The button displays the number
    @IBOutlet weak var numberButton: UIButton!

    /// The fizz button
    @IBOutlet weak var fizzButton: UIButton!

    /// The buzz button
    @IBOutlet weak var buzzButton: UIButton!

    /// The fizz buzz button
    @IBOutlet weak var fizzBuzzButton: UIButton!

    /// Called when the ViewController loads
    ///
    /// Sets up the game and the gameScore
    override func viewDidLoad() {
        super.viewDidLoad()
        game = Game()

        guard let game = game else {
            return
        }
        gameScore = game.score
    }

    /// Handles the user's move
    /// - Parameter move: the user's move
    func play(move: Brain.Move) {
        guard let game = game else {
            return
        }
        let response = game.play(move: move)
        gameScore = response.score
    }

    /// Handles the user's taps on screen
    /// - Parameter sender: the button the user tapped
    @IBAction func buttonTapped(_ sender: UIButton) {

        switch sender {
        case numberButton:
            play(move: .number)
        case fizzButton:
            play(move: .fizz)
        case buzzButton:
            play(move: .buzz)
        case fizzBuzzButton:
            play(move: .fizzbuzz)
        default:
            print("invalid selection")
        }
    }
}
