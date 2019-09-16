//
//  OutputView.swift
//  RacingCar
//
//  Created by 공명진 on 2019/09/11.
//  Copyright © 2019 JK. All rights reserved.
//

import Foundation

struct OutputView {
    
    static func printGameResult(racingGame: RacingGame) {
        racingGame.printResult()
        let winCars = racingGame.winRaces()
                            .map { $0.carName }
        let carNames = winCars.joined(separator: ",")
        print("'\(carNames)' won the race")
    }
}
