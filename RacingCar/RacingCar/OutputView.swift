//
//  OutputView.swift
//  RacingCar
//
//  Created by junwoo on 2019/09/12.
//  Copyright © 2019 JK. All rights reserved.
//

import Foundation

struct OutputView {
    let game: RacingGame
    var accumulatedRecords = [Int]()
    
    mutating func printResult() {
        initialAccumulatedRecords()
        for round in game.rounds {
            let recordsPerRound = round.records
            prints(recordsPerRound: recordsPerRound)
        }
    }
    
    mutating func initialAccumulatedRecords() {
        for _ in 1...game.cars.count {
            accumulatedRecords.append(0)
        }
    }
    
    func prints(distance: Int) {
        for _ in 0..<distance {
            print("-", terminator: "")
        }
        print("")
    }
    
    mutating func prints(recordsPerRound: [Int]) {
        for carIndex in 0..<game.cars.count {
            let carRecord = recordsPerRound[carIndex]
            accumulatedRecords[carIndex] += carRecord
            let distance = accumulatedRecords[carIndex]
            prints(distance: distance)
        }
        print("***************")
    }
}
