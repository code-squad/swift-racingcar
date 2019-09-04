//
//  RacingCar.swift
//  RacingCar
//
//  Created by jake.you on 2019/09/04.
//  Copyright © 2019 JK. All rights reserved.
//

import Foundation

struct RacingCar {
    var mileage: Int = 0
    
    mutating func go() {
        mileage = mileage + 1
    }
    
    func showTravels() {
        for _ in 0..<mileage {
            print("-", terminator:"")
        }
        print("")
    }
}
