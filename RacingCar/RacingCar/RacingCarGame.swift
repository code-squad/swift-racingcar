//
//  RacingCarGame.swift
//  RacingCar
//
//  Created by jake.you on 2019/09/04.
//  Copyright © 2019 JK. All rights reserved.
//

import Foundation

struct RacingCarGame {
    
    private let totalRound: UInt
    private var racingCars: [RacingCar]
    var racingResults: [RacingResult]
    
    init(numberOfPlay: UInt, racingCars: [RacingCar]) {
        self.totalRound = numberOfPlay
        self.racingCars = racingCars
        self.racingResults = []
    }
    
    mutating func play() {
        for round in 0..<totalRound {
            startRace(of: round)
            recordResult(of: round)
        }
    }
    
    private mutating func startRace(of round: UInt) {
        for index in 0..<racingCars.count {
            racingCars[index].race()
        }
    }
    
    private mutating func recordResult(of round: UInt) {
        let result = RacingResult(round: round, racingCars: racingCars)
        racingResults.append(result)
    }
}
