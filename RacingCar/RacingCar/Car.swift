//
//  Car.swift
//  RacingCar
//
//  Created by junwoo on 2019/09/16.
//  Copyright © 2019 JK. All rights reserved.
//

import Foundation

struct Car {
    var name: String
    
    func racePerRound() -> Int {
        let randomDistance: Int = Int.random(in: 0...9) >= 4 ? 1 : 0
        return randomDistance
    }
}
