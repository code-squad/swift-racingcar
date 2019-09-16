//
//  RacingCarGame.swift
//  RacingCar
//
//  Created by jake.you on 2019/09/04.
//  Copyright © 2019 JK. All rights reserved.
//

import Foundation

struct RacingCarGame {
    
    private(set) var racingCars: [RacingCar]
    
    init( racingCars: [RacingCar] ) {
        self.racingCars = racingCars
    }
    
    mutating func run() -> RoundResult {
        for index in 0..<racingCars.count {
            racingCars[index].race()
        }
        return RoundResult(racingCars: racingCars)
    }
}
