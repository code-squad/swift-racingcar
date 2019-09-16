//
//  main.swift
//  RacingCar
//
//  Created by JK on 03/04/2018.
//  Copyright © 2018 JK. All rights reserved.
//

import Foundation

let inputView = InputView()
let racingCars = inputView.racingCars()

var game = RacingCarGame(racingCars: racingCars)
var racingResult = RacingResult()

for _ in 0...2 {
    let result = game.run()
    racingResult.write(result: result)
}

let resultView = RacingResultView(racingResult: racingResult)
resultView.showRacingResult()
