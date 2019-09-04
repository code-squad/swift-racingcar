//
//  RacingResult.swift
//  RacingCar
//
//  Created by cocoa on 04/09/2019.
//  Copyright © 2019 JK. All rights reserved.
//

import Foundation

struct RacingResult {
    let distance: Int
    init() {
        var distance = 0
        for _ in 0..<3 {
            let random = Int.random(in: 0...9)
            if random >= 4 {
                distance += 1
            }
        }
        self.distance = distance
    }
    
    func display() {
        for _ in 0..<distance {
            print("-", terminator: "")
        }
        print("")
    }
}
