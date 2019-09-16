//
//  RacingGame.swift
//  RacingCar
//
//  Created by dominico park on 04/09/2019.
//  Copyright © 2019 JK. All rights reserved.
//

import Foundation

struct RacingGame {
    let cars: [Car]
    let numberOfRounds: Int
    var rounds = [Round]()
    
    init(cars: [Car], numberOfRounds: Int) {
        self.cars = cars
        self.numberOfRounds = numberOfRounds
    }
    
    mutating func startRace() {
        for _ in 1...numberOfRounds {
            var round = Round(cars: cars, records: [])
            round.start()
            rounds.append(round)
        }
    }
}
