//
//  Round.swift
//  RacingCar
//
//  Created by junwoo on 2019/09/16.
//  Copyright © 2019 JK. All rights reserved.
//

import Foundation

struct Round {
    let cars: [Car]
    var records: [Int] = []
    
    mutating func start() {
        for car in cars {
            let distance = car.racePerRound()
            records.append(distance)
        }
    }
}
