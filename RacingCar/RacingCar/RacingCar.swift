//
//  RacingCar.swift
//  RacingCar
//
//  Created by jake.you on 2019/09/04.
//  Copyright © 2019 JK. All rights reserved.
//

import Foundation

struct RacingCar {
    private(set) var distance: UInt
    private(set) var name: String
    
    init(name: String, distance: UInt = 0) {
        self.name = name
        self.distance = distance
    }
    
    func distance(for number: UInt32) -> UInt {
        return (number > 4) ? 1 : 0
    }
    
    mutating func race() {
        distance = distance + distance(for: arc4random_uniform(10))
    }
}
