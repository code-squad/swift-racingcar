//
//  RacingCar.swift
//  RacingCar
//
//  Created by jake.you on 2019/09/04.
//  Copyright © 2019 JK. All rights reserved.
//

import Foundation

struct RacingCar {
    var distance: UInt
    var name: String
    
    init(name: String) {
        self.name = name
        self.distance = 0
    }
    
    private func distance(for number: UInt32) -> UInt {
        return (number > 4) ? 1 : 0
    }
    
    mutating func race() {
        distance = distance + distance(for: arc4random_uniform(10))
    }
}
