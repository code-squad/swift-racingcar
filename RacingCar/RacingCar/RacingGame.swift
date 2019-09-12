//
//  RacingGame.swift
//  RacingCar
//
//  Created by dominico park on 04/09/2019.
//  Copyright © 2019 JK. All rights reserved.
//

import Foundation

struct RacingGame {
    let numberOfCars: Int
    var races = [[Int]]()
    
    init(numberOfCars: Int) {
        self.numberOfCars = numberOfCars
    }
    
    mutating func race() {
        var racePerRound = [Int]()
        for carIndex in 0..<numberOfCars {
            let randomDistance: Int = Int.random(in: 0...9) >= 4 ? 1 : 0
            racePerRound.append(accumulatedDistancePerCar(carIndex: carIndex, distance: randomDistance))
        }
        races.append(racePerRound)
    }
    
    func accumulatedDistancePerCar(carIndex: Int, distance: Int) -> Int {
        let isFirstRound: Bool = races.count == 0
        guard isFirstRound else {
            let lastRoundRace: [Int] = races[races.count - 1]
            let accumulated = lastRoundRace[carIndex]
            return distance + accumulated
        }
        return distance
    }
    
}
