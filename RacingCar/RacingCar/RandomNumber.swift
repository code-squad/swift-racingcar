//
//  RandomNumber.swift
//  RaceCar
//
//  Created by JK on 15/05/2018.
//  Copyright © 2018 JK. All rights reserved.
//

import Foundation

extension Int {
    static let RANDOM_MAX_VALUE : UInt32 = 10
    static func random(maxValue : UInt32) -> Int {
        return Int(arc4random_uniform(maxValue))
    }
}

struct RandomNumber {
    private var random : Int = 0
    init(value : Int) {
        random = value
    }
    
    func isGoing() -> Bool {
        return (random >= 4)
    }
}
