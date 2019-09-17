//
//  main.swift
//  RacingCar
//
//  Created by JK on 03/04/2018.
//  Copyright © 2018 JK. All rights reserved.
//

import Foundation

let inputView = InputView()
let carNames = inputView.readNameOfCars()
let totalRounds = inputView.readNumberOfRounds()

let racingCars = carNames.map { RacingCar(name: $0) }
let game = RacingCarGame(racingCars: racingCars)

var looper = RacingGameLooper(game: game)
looper.play(count: totalRounds)

let resultView = RacingResultView(racingResult: looper.racingResult)
resultView.showRacingResult()
resultView.showWinners()
