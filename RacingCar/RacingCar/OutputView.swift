//
//  OutputView.swift
//  RacingCar
//
//  Created by junwoo on 2019/09/12.
//  Copyright © 2019 JK. All rights reserved.
//

import Foundation

struct OutputView {
    
    static func printGame(game: RacingGame) {
        let numberOfRounds: Int = game.races.count
        for round in 0..<numberOfRounds {
            let racePerRound = game.races[round]
            recordPerRound(round: round, numberOfCars: game.numberOfCars, racePerRound: racePerRound)
        }
    }
    
    static private func distancePerRound(carIndex: Int, racePerRound: [Int]) {
        for _ in 0..<racePerRound[carIndex] {
            print("-", terminator: "")
        }
        print("")
    }
    
    static private func recordPerRound(round: Int, numberOfCars: Int, racePerRound: [Int]) {
        for car in 0..<numberOfCars {
            distancePerRound(carIndex: car, racePerRound: racePerRound)
        }
        print("***************")
    }
}
