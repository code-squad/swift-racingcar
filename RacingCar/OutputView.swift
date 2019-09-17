//
//  OutputView.swift
//  RacingCar
//
//  Created by 공명진 on 2019/09/11.
//  Copyright © 2019 JK. All rights reserved.
//

import Foundation

struct OutputView {
    
    static func printResult(cars: [Car]) {
        for index in 0 ..< cars.count {
            print("\(cars[index].carName) : ", terminator: "")
            for _ in 0 ..< cars[index].position {
                print("-", terminator: "")
            }
            print("")
        }
    }
    
    static func printGameResult(racingGame: RacingGame) {
        printResult(cars: racingGame.cars)
        let winCars = racingGame.winRaces()
                            .map { $0.carName }
        let carNames = winCars.joined(separator: ",")
        print("'\(carNames)' won the race")
    }
}
