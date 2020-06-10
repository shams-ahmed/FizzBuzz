//
//  Brain.swift
//  FizzBuzz
//
//  Created by Andrew Marmion on 05/06/2020.
//  Copyright © 2020 Andrew Marmion. All rights reserved.
//

import Foundation

/// The Brain of FizzBuzz
class Brain {

    /// The different moves that the user can make
    enum Move: Equatable {
        case fizz
        case buzz
        case fizzbuzz
        case number
    }

    /// Checks to see if the number is divisible by three
    /// - Parameter number: the number we want to check
    /// - Returns: true if it is divisible by three
    func isDivisibleByThree(number: Int) -> Bool {
        number.isMultiple(of: 3)
    }

    /// Checks to see if the number is divisible by five
    /// - Parameter number: the number we want to check
    /// - Returns: true if it is divisible by five
    func isDivisibleByFive(number: Int) -> Bool {
        number.isMultiple(of: 5)
    }

    /// Checks to see if the number is divisible by fifteen
    /// - Parameter number: the number we want to check
    /// - Returns: true if it is divisible by fifteen
    func isDivisibleByFifteen(number: Int) -> Bool {
        number.isMultiple(of: 15)
    }

    /// Checks to see what the state for the given number should be
    /// - Parameter number: the number we are checking
    /// - Returns: the state for the given number
    func check(number: Int) -> Brain.Move {
        if isDivisibleByFifteen(number: number) {
            return .fizzbuzz
        } else if isDivisibleByFive(number: number) {
            return .buzz
        } else if isDivisibleByThree(number: number) {
            return .fizz
        } else {
            return .number
        }
    }
}
