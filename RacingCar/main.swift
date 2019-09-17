//
//  main.swift
//  RacingCar
//
//  Created by JK on 03/04/2018.
//  Copyright © 2018 JK. All rights reserved.
//

import Foundation

let cars = InputView.readCars()
let iterations = InputView.readIterations()
let game = RacingGame(cars: cars, iterations: iterations)
game.run()
OutputView.printGameResult(racingGame: game)
