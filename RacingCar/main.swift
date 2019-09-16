//
//  main.swift
//  RacingCar
//
//  Created by JK on 03/04/2018.
//  Copyright © 2018 JK. All rights reserved.
//

import Foundation

print("Please enter a car name to join. (Separate names with commas)")
let cars = InputView.cars(inputValue: readLine() ?? "")
print("Please enter the number of challenges")
let count = InputView.count(inputValue: readLine() ?? "")
let game = RacingGame(cars: cars, count: count)
game.run()
OutputView.printGameResult(racingGame: game)
