//
//  Brain.swift
//  FizzBuzz
//
//  Created by Andrew Marmion on 05/06/2020.
//  Copyright © 2020 Andrew Marmion. All rights reserved.
//

import Foundation

class Brain {
    
    enum State: Equatable {
        case fizz
        case buzz
        case fizzbuzz
        case number(Int)
    }
    
    func isDivisibleByThree(number: Int) -> Bool {
        number.isMultiple(of: 3)
    }
    
    func isDivisibleByFive(number: Int) -> Bool {
        number.isMultiple(of: 5)
    }
    
    func isDivisibleByFifteen(number: Int) -> Bool {
        number.isMultiple(of: 15)
    }
    
    func check(number: Int) -> Brain.State {
        if isDivisibleByFifteen(number: number) {
            return .fizzbuzz
        } else if isDivisibleByFive(number: number) {
            return .buzz
        } else if isDivisibleByThree(number: number) {
            return .fizz
        } else {
            return .number(number)
        }
    }
}
