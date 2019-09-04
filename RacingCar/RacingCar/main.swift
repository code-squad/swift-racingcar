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

let game = RacingCarGame(numberOfPlay: 3, racingCars: racingCars)
game.play()
