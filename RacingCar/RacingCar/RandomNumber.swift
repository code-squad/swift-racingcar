//
//  RandomNumber.swift
//  RaceCar
//
//  Created by JK on 15/05/2018.
//  Copyright © 2018 JK. All rights reserved.
//

import Foundation

//MARK: - extension

extension Int {
    static let RANDOM_MAX_VALUE : UInt32 = 10
    static func random(maxValue : UInt32) -> Int {
        return Int(arc4random_uniform(maxValue))
    }
}

extension Double {
    static func random(maxValue : Double) -> Double {
        return Double.random(in: 0...maxValue)
    }
}

//MARK: - Generics

struct Example {
    func findIndex(of valueToFind: String, in array: [String]) -> Int? {
        for (index, value) in array.enumerated() {
            if value == valueToFind {
                return index
            }
        }
        return nil
    }

    init() {
        let strings = ["cat", "dog", "llama", "parakeet", "terrapin"]
        if let foundIndex = findIndex(of: "llama", in: strings) {
            print("The index of llama is \(foundIndex)")
        }

    }
}


//MARK: -

protocol RandomableGo {
    func isGoing() -> Bool
    func defaultValue() -> Int
}

extension RandomableGo {
    func defaultValue() -> Int {
        return 99
    }
}

//MARK: - RandomNumber

struct RandomNumber {
    static let GoingLimit = 4
    private var random : Int = 0
    init(value : Int) {
        random = value
    }
}

extension RandomNumber : RandomableGo {
    func isGoing() -> Bool {
        return (random >= RandomNumber.GoingLimit)
    }
}

//MARK: - MagicNumber

struct MagicNumber : RandomableGo {
    static let GoingNumber = 990418
    private var magic : Int = 0
    init(value : Int) {
        magic = value
    }
    
    func isGoing() -> Bool {
        return (magic == MagicNumber.GoingNumber)
    }
}

