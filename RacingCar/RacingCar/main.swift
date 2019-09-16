//
//  main.swift
//  RacingCar
//
//  Created by JK on 03/04/2018.
//  Copyright © 2018 JK. All rights reserved.
//

import Foundation

func main() {
    let cars = InputView.readCars()
    let numberOfRounds = InputView.readNumberOfRounds()
    var game = RacingGame(cars: cars, numberOfRounds: numberOfRounds)
    game.startRace()
    var outputView = OutputView(game: game, accumulatedRecords: [])
    outputView.printResult()
}

main()
